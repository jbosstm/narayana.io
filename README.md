# Preparing the environment

Install awestruct (verified on Fedora 35):
```
sudo dnf -y update && sudo dnf -y install gcc-c++ make ruby-devel libxml2-devel libxslt-devel libffi-devel findutils git ruby tar redhat-rpm-config which python2 patchutils gem && sudo dnf clean all
```

Install NodeJS as it is required by the JavaScript compression module:
```
sudo dnf install nodejs
```

Clone this repository (or your fork). Development code is stored on the develop branch:
```
git clone https://github.com/jbosstm/narayana.io.git
cd narayana.io
git checkout develop
```

Install required gems (on rhel this command might be executed with sudo):
```
bundle install
```

For more information about Awestruct refer https://github.com/awestruct/awestruct

# Web page preview

To build and run a preview of the website on a local server:
```
awestruct -d
```

# Deploying web page (to update)

Clean all unnecessary junk if required
```
git clean -d -f -x
```

Build deployable web page. This will generate the production web site.
```
awestruct -P production
```

To upload the (new) production web site, run the following command. If everything went OK, the new web site is updated automatically.
```
rsync -Pr --protocol=28 --delete-after _site/* jbosstm@<rysnc_hostname>:www_htdocs/jbosstm/
```
