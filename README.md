Refer to the following page for instructions on installing awestruct: http://awestruct.org/getting_started/
gem install mime-types --version 1.16
gem install bundler
gem install mime-types --version 2.1
gem install awestruct

To generate the site, call:
awestruct -P production -g --deploy
git clean -d -f
git push upstream master