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

# Deploying web page (to update)

```
rsync -Pr --protocol=28 --delete-after public/* jbosstm@<rysnc_hostname>:www_htdocs/jbosstm/
```
