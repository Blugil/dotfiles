# Blugil's dotfiles 

These are the dotfiles configured to match [this reddit post](https://www.reddit.com/r/unixporn/comments/o6j9hj/yabaimacos_eat_breath_sleep_gruvbox/?utm_source=share&utm_medium=web2x&context=3).

This is a constant rough draft and will always be updated, tread carefully.
There are many like them, but these are mine (and they're bad).

Managed with [yadm](https://yadm.io)

---

## Continued Goals:

- [x] switch to kitty
- [ ] make fzf ignore results like .DS_Store, .git, /node_modules, etc.
- [ ] revamping neovim config
- [ ] vscode settings
- [ ] add tmux to workflow
- [ ] switch to zinit over ohmyzsh
- [ ] video tutorial

---

## Programs and Dependencies
This is a list of the programs we'll be installing and dependencies to get everything working as intended. If something isn't here I'll add it.

> Note: These dotfiles are for my *MacOS Computer* and thus uses programs that will not work out of the box on other systems. 

- [MesloLGS NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo) (I'm not sure if this is correct, I'll fix if not)
- [iterm2](https://iterm2.com/)
- [homebrew](https://hombrew.sh)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) (I know, don't laugh)
- [powerline10k](https://github.com/romkatv/powerlevel10k)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [neovim](https://neovim.io/)
- [yabai](https://github.com/koekeishiya/yabai) & [skhd](https://github.com/koekeishiya/skhd)
- [lf](https://github.com/gokcehan/lf)
- [spacebar](https://github.com/cmacrae/spacebar)
- [fzf](https://github.com/junegunn/fzf)


---

## Installation instructions

### Setting it up
I believe in the $XDG_CONFIG_HOME philosophy of cleaning your home directory. Start by navigating to your home directory and creating a .config directory:
```sh
mkdir .config
```
#### Overview for setup:

1. For whichever program I'm talking about, navigate to the .config directory and use `mkdir` to create a directory of the same name shown in my repo.
2. Either:
	1. Create and open up a file with the same name as described in my repo.
	2. Copy and paste the text from my file to yours.
	
	Or:
	1. Download the file from this repo and move it to the proper directory.

---

### Iterm2

I wrote it's own guide [here](https://github.com/Blugil/dotfiles/tree/master/.config/iterm2) as part of this repo if you'd like to exactly replicate the way my terminal looks in the post.

---

### Homebrew

To download homebrew, run this command: 
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
---

### Oh-my-zsh
Should just work with the zshrc (so long as your paths are correct):
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

### Powerlevel10k
Also relatively easy, just watch your paths and make sure everything is as it should be: Make sure to have MesloLGS NF installed.

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

---

### Neovim
If you want a really good one and aren't just looking to yoink my theme, use a [brokenbyte's](https://gitlab.com/brokenbyte/dotfiles/-/tree/master/dot_config/nvim). This man knows what he's doing way more than I do.

Install neovim:

```sh
brew install neovim
```

#### Vim-plug
Plugin manager for vim (and neovim), install like so:

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
---

### Yabai & Skhd
> I use yabai with SIP *enabled*, if you'd like to disable it follow the guide on their github page. Also edit yabairc to suit your unmanaged window preferences.

First, install yabai using this command: 
```sh
brew install koekeishiya/formulae/yabai
```
Second, install skhd:
```sh
brew install koekeishiya/formulae/skhd
```
Turning on yabai will *f\*ck* up your windows on the first go around, figure out what you don't want managed and add it to your yabairc.

---

### LF
I lied, lf is the easiest to install (and I have no customization for it, it *should* just work):

```sh
brew install lf
```

---

### Spacebar

First go to your system preferences and enable 'automatically hide and show menu bar'

Second, install by:

```sh
brew install cmacrae/formulae/spacebar
```

---

Holy sh*t, you're done! If you have any questions please let me know and I will be sure to answer.
