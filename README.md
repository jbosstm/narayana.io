[![Website Build](https://github.com/marcosgopen/marcosgopen.github.io/actions/workflows/build-website.yml/badge.svg)](https://github.com/marcosgopen/marcosgopen.github.io/actions/workflows/build-website.yml)
# Preparing the environment

Install Hugo ([guide](https://gohugo.io/installation/)):
```
sudo dnf install hugo
```

Clone this repository (or your fork).


# Web page preview

To build and run a preview of the website on a local server:
```
npm install
hugo -e development
hugo serve
```

To upload the (new) production web site, run the following command. If everything went OK, the new web site is updated automatically.
```
rsync -Pr --protocol=28 --delete-after public/* jbosstm@<rysnc_hostname>:www_htdocs/jbosstm/
```