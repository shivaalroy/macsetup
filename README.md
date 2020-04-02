# macsetup

## List of things to do in Settings
- [ ] install chrome
- [ ] set display size
- [ ] set touch bar settings (see below)
- [ ] set mouse settings (tracking speed, scroll direction, etc.)
- [ ] set dock preferences
- [ ] set hot corners / mission control
- [ ] set computer name
- [ ] set up imessage
- [ ] set up contacts
- [ ] configure notifications
- [ ] set up screen saver
- [ ] show battery percentage

## App Set Up
- [ ] set up Chrome
- [ ] set up iTerm
- [ ] set up Airtable
- [ ] set up BetterSnapTool
- [ ] set up Slack
- [ ] set up KeepingYouAwake
- [ ] set up Caprine
- [ ] set up Flux
- [ ] set up Sublime, with registration code [here](https://mail.google.com/mail/u/0?ik=f340c96e8a&view=om&permmsgid=msg-f%3A1657311888944350919)
- [ ] set up Atom
- [ ] set up RescueTime


## Keyboard Settings
- [ ] set key repeat speed
- [ ] set key repeat delay, etc.
- [ ] following the last comment in [this](https://github.com/atom/atom/issues/1669) for disabling Atom bell. Run:
```sh
mkdir -p ~/Library/KeyBindings
echo '{\n  "^@\\UF701" = "noop:";\n  "^@\\UF702" = "noop:";\n  "^@\\UF703" = "noop:";\n}' > ~/Library/KeyBindings/DefaultKeyBinding.dict
```


## Terminal Setup
### Set up zsh and oh-my-zsh
Google how to do this. But it should look roughly like:
- [ ] brew install zsh 
- [ ] brew install zsh-completions
- [ ] curl the oh-my-zsh repo:
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Set up git
- [ ] brew install git
- [ ] Set up git checkout to only show local branches https://gist.github.com/mmrko/b3ec6da9bea172cdb6bd83bdf95ee817
- [ ] add git to the list of zsh plugins
- [ ] turn off paging for git branch:
```sh
git config --global pager.branch false
git config --global pull.rebase true
git config --global url."git@github.com:".insteadOf "https://github.com/"
```

### Additional Stuff
- [ ] Set up bash aliases and custom theme
- [ ] brew install vim and then setup vim


## Touch Bar
- [ ] set keyboard touch bar to always be on
- [ ] remove Ask Siri


## Turn Off Typing Autocorrect Suggestions
```sh
TODO
```


## Overwrite UI Defaults
Remove delay for showing dock. Following http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/
```sh
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
```

## Audio setup
### Set built-in microphone to always be default input
Following http://ssrubin.com/posts/fixing-macos-bluetooth-headphone-audio-quality-issues-with-hammerspoon.html
> Open the standard "Audio MIDI Setup.app" utility, and click the + at the bottom to create an Aggregate Device. Then select the Internal Microphone as the only component in this aggregate device and select it as the default input.

### Enable AAC at 320kbps 
Following the comments at the bottom to enable AAC at 320 bitrate. https://www.macrumors.com/how-to/enable-aptx-aac-bluetooth-audio-codecs-macos/
```sh
defaults write bluetoothaudiod "Enable AAC codec" -bool true
defaults write bluetoothaudiod "AAC Bitrate" 320
sudo defaults write bluetoothaudiod "Enable AAC codec" -bool true
sudo defaults write bluetoothaudiod "AAC Bitrate" 320
```
## More powerful Quicklook
```sh
brew cask install qlstephen
```
