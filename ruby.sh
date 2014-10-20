# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo ""
echo "Download and install RVM"
curl -sSL https://get.rvm.io | sudo bash -s stable --ruby --gems=rails,bundler,esxi,hirb,pry

echo ""
echo "Install Ruby 1.8.7"
source "/usr/local/rvm/scripts/rvm"
command rvm install 1.8.7
