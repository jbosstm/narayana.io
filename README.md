# Preparing the environment

Install awestruct (verified on Fedora 35):
```
sudo dnf -y update && sudo dnf -y install gcc-c++ make ruby-devel libxml2-devel libxslt-devel libffi-devel findutils git ruby tar redhat-rpm-config which python2 patchutils gem && dnf sudo clean all
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

Install required gems:
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

Upload a web page to github.io. If everything went ok, web page will be updated automatically.
```
rsync -Pr --protocol=28 --delete-after _site/* jbosstm@filemgmt-prod-sync.jboss.org:www_htdocs/jbosstm/
```


If you did any changes on the development branch. Go back and push them to GitHub.
```
git push origin develop
```
