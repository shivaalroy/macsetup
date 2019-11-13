# macsetup

## List of things to do in settings
- [ ] Install chrome
- [ ] set display size
- [ ] set touch bar settings (see below)
- [ ] set mouse settings (tracking speed, scroll direction, etc.)
- [ ] set keyboard settings (key repeat speed, key repeat delay, etc.)
- [ ] set dock preferences
- [ ] set hot corners / mission control
- [ ] set computer name
- [ ] set up BetterSnapTool
- [ ] set up slack
- [ ] set up airtable
- [ ] set up KeepingYouAwake
- [ ] set up imessage
- [ ] set up contacts
- [ ] set up caprine
- [ ] set up iterm
- [ ] configure notifications
- [ ] set up flux
- [ ] set up screen saver
- [ ] show battery percentage
- [ ] set up sublime


## Set up zsh and oh-my-zsh
Google how to do this. But it should look roughly like this:
- (brew) install zsh and zsh-completions
- curl the oh-my-zsh repo

- [ ] Set up bash aliases and custom theme
- [ ] Set up git checkout to only show local branches https://gist.github.com/mmrko/b3ec6da9bea172cdb6bd83bdf95ee817



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
