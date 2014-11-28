# Preparing the environment

Install Ruby
```
curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3
source /usr/local/rvm/scripts/rvm
```

Install NodeJS and libxml. NodeJS is required by the JavaScript compression module.
```
sudo apt-get install libxslt-dev libxml2-dev nodejs
```

Install bundler
```
gem install bundler
```

Get the source code. Development code is stored on the develop branch and generated web page is no the master branch.
```
git clone https://github.com/jbosstm/jbosstm.github.io
cd jbosstm.github.io
git checkout develop
```

Install required gems
```
bundle install
```

For more information about Awestruct refer http://awestruct.org

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
git checkout develop
git push origin develop
```
