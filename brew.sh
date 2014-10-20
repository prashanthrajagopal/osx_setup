# Get the list of packages from constants
source ./constants

echo ""
echo "Installing the standalone Command Line Tools on Mavericks"
xcode-select --install

echo ""
echo "Install Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ""
echo "Running brew update to be sure"
brew update --verbose

echo ""
echo "Check if everything is fine"
brew doctor

# Install the list of packages
for i in ${PACKAGES_TO_INSTALL[@]}
do
  brew install $i
done

echo ""
echo "Installing Brew Cask"
brew install caskroom/cask/brew-cask

echo ""
echo "Installing cask packages"
for i in ${CASK_LIST[@]}
do
  brew cask install $i
done

echo ""
echo "Installing Brew Fonts"
brew tap caskroom/fonts
echo "Installing inconsolata"
brew cask install font-inconsolata
