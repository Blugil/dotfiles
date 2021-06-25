# dotfiles 

> THIS README IS A ROUGH DRAFT AND I SUCK AT WRITING, TREAD CAREFULLY (it will get better).

Blugil's dotfiles managed with [yadm](https://yadm.io)

There are many like them, but these are mine (and they're bad).

These are the dotfiles configured to match [this reddit post](https://www.reddit.com/r/unixporn/comments/o6j9hj/yabaimacos_eat_breath_sleep_gruvbox/?utm_source=share&utm_medium=web2x&context=3). While I understand most of you know what you're doing and don't need something *this* intense, I'm still going to make it.

---

## Dependencies
- [iterm2](https://iterm2.com/)
- [homebrew](https://hombrew.sh)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) (I know, don't laugh)
- [powerline10k](https://github.com/romkatv/powerlevel10k)
- [lf](https://github.com/gokcehan/lf)
- [neovim](https://neovim.io/)
- [yabai](https://github.com/koekeishiya/yabai) & [skhd](https://github.com/koekeishiya/skhd)

> Note: These dotfiles are for my *Mac* and thus uses programs that will not work out of the box on other systems. 

---

## Installation instructions
I'm a simp for the $XDG_CONFIG_HOME philosophy of cleaning your home directory. Start by navigating to your home directory and creating a .config directory:
```sh
mkdir .config
```
All of the rc files you will use (from this tutorial) lie here.

### Homebrew
> you'll need this first if you don't have it. 

To download homebrew, run this command: 
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
It should take a while, but once it's done it'll make the rest of this process easy.

---

### Yabai & Skhd
> These are coupled together because yabai *requires* shkd to manage the hotkeys.

First, install yabai using this command: 
```sh
brew install koekeishiya/formulae/yabai
```
Second, install skhd:
```sh
brew install koekeishiya/formulae/skhd
```
Look over my yabairc and skhdrc files to make sure the configuration is suitable for your needs.
> For example my yabairc assumes I'm using spacebar and has a setting related to that top bar height.

> Note again: I use yabai with SIP *enabled*, if you'd like to disable it follow the guide on their github page.

Third, create a yabai and skhd directory within the .config directory you made at the start:
```sh
# from ~/.config run:
mkdir yabai && mkdir skhd
```
Then either download or copy and paste the contents from my yabairc & skhdrc into their respective directories.

Lastly, start both programs using brew; brew will also restart these programs on system restart.
```sh
brew services start yabai
brew services start shkd
```

---

### Zsh
Check if you already have zsh on your machine: 
```sh
which zsh
```
If you don't have zsh installed, do use brew to install like so:
```sh
brew install zsh
```
If you're on a new-ish version of MacOS, zsh will be your default shell. If you aren't, you can set zsh with:
```sh
chsh -s $(which zsh)
```
 