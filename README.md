[![Website Build](https://github.com/jbosstm/narayana.io/actions/workflows/build-website.yml/badge.svg)](https://github.com/jbosstm/narayana.io/actions/workflows/build-website.yml)
# Preparing the environment

Install Hugo ([guide](https://gohugo.io/installation/)):
```
sudo dnf install hugo
```

Clone this repository (or your fork).


# Web page build and preview

To build the website:
```
npm install
npm run build
```


To run a preview of the website on a local server:
```
hugo serve
```

To upload the (new) production web site, run the following command. If everything went OK, the new web site is updated automatically.
```
rsync -Pr --protocol=28 --delete-after public/* jbosstm@<rysnc_hostname>:www_htdocs/jbosstm/
```
# Releasing Narayana and updating the website

After a new Narayana version is released we need to make sure that also the following components are updated:
- download links need updating (https://github.com/jbosstm/narayana.io/tree/develop/content/en/docs) at https://github.com/jbosstm/narayana.io/blob/develop/content/en/downloads/_index.md?plain=1#L12-L17
- api needs updating (unzip the javadoc build by the narayana-full component into the api folder) at https://github.com/jbosstm/narayana.io/tree/develop/content/en/docs/api
- project and product documentation (built from the [documentation project](https://github.com/jbosstm/documentation)) need updating at https://github.com/jbosstm/narayana.io/tree/develop/content/en/docs

Please note: when building narayana and documentation projects you need to make sure to use the correct release tag (e.g. 'git checkout 7.0.x.Final') if you want the right version of the api and docs
