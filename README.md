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