# macsetup

## Overwrite UI Defaults
Following http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/
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
