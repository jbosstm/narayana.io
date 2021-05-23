# Preparing the environment


Follow the instructions here to install awestruct:
https://awestruct.org/getting_started/

This includes a download of ruby: curl -L https://get.rvm.io | bash -s stable --ruby=2.7.3 --auto-dotfiles

Install NodeJS and libxml. NodeJS is required by the JavaScript compression module.
```
sudo apt-get install libxslt-dev libxml2-dev nodejs
```
Get the source code. Development code is stored on the develop branch.
```
git clone https://github.com/jbosstm/jbosstm.github.io
cd jbosstm.github.io
git checkout develop
```

Install required gems
```
bundle install
```

For more information about Awestruct refer https://awestruct.org

# Web page preview

If needed build and run a web page for a preview on a local server
```
awestruct -d
```

# Deploying web page

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
rsync -Pr --protocol=28 --delete-after _site/* jbosstm@filemgmt.jboss.org:www_htdocs/jbosstm/
```


If you did any changes on the development branch. Go back and push them to GitHub.
```
git push origin develop
```
