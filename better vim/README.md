Though vim comes preinstalled on mac, there are a lot of useful features that are disabled by default, such as syntax highlighting. In order to enable these features we will reinstall/override the current vim. Follow these steps: 
1. Install command-line tools for Xcode: `xcode-select --install`
2. Wait until the command-line tools have been installed
3. Install Homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Install/override current vim: `brew install vim --override-system-vim`
