# My Dotfiles 

My personal, gruvbox themed MacOS rice. [yabai + sketchybar + skhd]

Inspired heavily by the dotfiles of sketchybar creator [Felix Kratz](https://github.com/FelixKratz).

<img width="1440" alt="Screenshot 2024-07-27 at 13 29 51" src="https://github.com/user-attachments/assets/330d5f1e-6283-450b-b483-1c7de4f92712">

# Dependencies

This repo only runs on MacOS, with me currently running Sonoma 14.5.

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

Then move the config files into your ~/.config folder.

The config files should be successfully installed.

Now, run this command to run all the services:

```
yabai --start-service
skhd --start-service
sketchybar --start-service
```

Thanks for using my setup!
