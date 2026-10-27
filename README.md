[![Website Build](https://github.com/jbosstm/narayana.io/actions/workflows/build-website.yml/badge.svg)](https://github.com/jbosstm/narayana.io/actions/workflows/build-website.yml)
# Preparing the environment

Install the Hugo **extended** edition ([guide](https://gohugo.io/installation/)):
```
sudo dnf install hugo
```

Install Dart Sass (required by the Doks theme's stylesheet pipeline — [guide](https://gohugo.io/functions/css/sass/#dart-sass)). It is not packaged for Fedora, so install the official release binary into a directory on your `PATH`, e.g.:
```
DART_SASS_VERSION=1.104.1
curl -sfLO "https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
tar -C "${HOME}/.local" -xf "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz" && rm "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
# then put the dart-sass dir on your PATH, e.g. add to ~/.bashrc:
#   export PATH="${HOME}/.local/dart-sass:${PATH}"
```
Verify with `sass --version`. (macOS: `brew install sass/sass/sass`.)

Clone this repository (or your fork).


# Web page build and preview

To build the website:
```
npm install
npm run build
```


To run a preview of the website on a local development server:
```
npm run dev
```

To upload the new production website, connect to the server via SFTP using the `jbosstm` user and a valid private key.
Once connected, delete the existing contents of the `jbosstm` directory, then upload the new website files in their place.

# Releasing Narayana and updating the website

Pre-requisite: please use JDK21 for releasing!

After a new Narayana version is released we need to make sure that also the following components are updated:
- download links and release date need updating (https://github.com/jbosstm/narayana.io/tree/develop/content/en/docs) at https://github.com/jbosstm/narayana.io/blob/develop/content/en/downloads/_index.md?plain=1#L12-L17
- project and product documentation (built from the [documentation project](https://github.com/jbosstm/documentation)) need updating at https://github.com/jbosstm/narayana.io/tree/develop/content/en/docs

Please note: when building narayana and documentation projects you need to make sure to use the correct release tag (e.g. 'git checkout 7.0.x.Final') if you want the right version of the api and docs
