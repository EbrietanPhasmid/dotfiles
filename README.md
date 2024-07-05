# My Dotfiles 

My personal, gruvbox themed MacOS rice! [yabai + sketchybar + skhd]

Inspired heavily by the dotfiles of sketchybar creator [Felix Kratz](https://github.com/FelixKratz).

<img width="1440" alt="Screenshot 2024-07-05 at 20 34 30" src="https://github.com/EbrietanPhasmid/dotfiles/assets/172548450/1909891b-1fc9-4ed6-aba3-69a451a5944a">


# Dependencies

This repo only runs on MacOS, with me currently runninf Sonoma 14.5.

You will need the following packages installed. Do this through homebrew using the following commands:

```
brew install koekeishiya/formulae/yabai
brew tap FelixKratz/formulae
brew install sketchybar
brew install koekeishiya/formulae/skhd
```

## Installation

First, if you want to use my kitty and Astrovim settings, make sure you have them downloaded, or run this commmand:

```
brew install neovim
brew install --cask kitty 
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

^ installs Kitty terminal, Neovim and Astrovim

--- 

Once you've installed the dependencies, download this repository to your downloads folder and unzip it.

Then, run this command:

```
mv -rf ~/Downloads/dotfiles-main/gruvbox-dot-master/* ~/.config/
```

The config files should be successfully installed.

Now, run this command to run all the services:

```
yabai --start-service
skhd --start-service
sketchybar --start-service
```

Thanks for using my setup!
