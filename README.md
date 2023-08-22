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

Open a PR to the main branch, as soon as the PR is merged the github action (under .github) will build and publish the new website.
