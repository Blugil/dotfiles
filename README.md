# dotfiles 

> THIS README IS A ROUGH DRAFT AND I SUCK AT WRITING, TREAD CAREFULLY (it will get better).

Blugil's dotfiles managed with [yadm](https://yadm.io)

There are many like them, but these are mine (and they're bad).

These are the dotfiles configured to match [this reddit post](https://www.reddit.com/r/unixporn/comments/o6j9hj/yabaimacos_eat_breath_sleep_gruvbox/?utm_source=share&utm_medium=web2x&context=3). While I understand most of you know what you're doing and don't need something *this* intense, I'm still going to make it.

---

## Programs and Dependencies
This is a list of the programs we'll be installing and dependencies to get everything working as intended, I *tried* to put them in order, but no promises.


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
- [fontawesome](https://fontawesome.com/v5.15/how-to-use/on-the-desktop/setup/getting-started)
- [spacebar](https://github.com/cmacrae/spacebar)

> Note: These dotfiles are for my *Mac* and thus uses programs that will not work out of the box on other systems. 

---

## Installation instructions

### Setting it up
I believe in the $XDG_CONFIG_HOME philosophy of cleaning your home directory. Start by navigating to your home directory and creating a .config directory:
```sh
mkdir .config
```
I realized how much time it will take to *individually describe* how to install each *rc file, so here is an overview:

1. For whichever program I'm talking about, navigate to the .config directory and use `mkdir` to create a directory of the same name shown in my repo.
2. Either:
	1. Run `vim filename` to create and open up a file with the same name as described in my repo.
	2. Copy and paste the text from my file to yours, done. 
3. Or:
	1. Download the file from this repo and move it to the proper directory.

---

### Iterm2

I wrote it's own guide [here](https://github.com/Blugil/dotfiles/tree/master/.config/iterm2) as part of this repo if you'd like to exactly replicate the way my terminal looks in the post.

---

### Homebrew
> you'll need this first if you don't have it. 

To download homebrew, run this command: 
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
It should take a while, but once it's done it'll make the rest of this process easy.

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

#### The 'shell' folder
This contains my `aliasrc` and `functionrc` files that hold my...aliases and functions (crazy, I know).
Install them like I described in the beginning, nothing fancy. Most aliases I have should work.

---

### Oh-my-zsh
Probrably the easiest one, it's just one command and *should* just work with the zshrc (so long as your paths are correct):
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

### Powerlevel10k
Also relatively easy, just watch your paths and make sure everything is as it should be:

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
In order to really take advantage of powerline10k you'll need to install a nerd font. As described earlier I use Meslo LGS for everything and I love it. Install it however you wish.

---

### Neovim
My neovim setup is *not* good, at all. If you want a really good one and aren't just looking to yoink my theme, use a [brokenbyte's](https://gitlab.com/brokenbyte/dotfiles/-/tree/master/dot_config/nvim). This man knows what he's doing way more than I do.

Install neovim:

```sh
brew install neovim
```

#### Vim-plug
Plugin manager for vim (and neovim), install like so:

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
So long as you have the init.vim file setup, all thats left is go enter neovim by running `nvim` and then type:

```
:PlugInstall
```
---

### Yabai & Skhd
> These are coupled together because yabai *requires* shkd to manage the hotkeys. I use yabai with SIP *enabled*, if you'd like to disable it follow the guide on their github page.

First, install yabai using this command: 
```sh
brew install koekeishiya/formulae/yabai
```
Second, install skhd:
```sh
brew install koekeishiya/formulae/skhd
```
Last, start both programs using brew; brew will also restart these programs on system restart.
```sh
brew services start yabai
brew services start shkd
```
> Turning on yabai will *f\*ck* up your windows on the first go around, figure out what you don't want managed and add it to your yabairc.

---

### LF
I lied, lf is the easiest to install (and I have no customization for it, it *should* just work):

```sh
brew install lf
```

---

### Spacebar
My spacebar is not very customized, it just uses some slightly different icons and matches the theme better than default.
> In order to make it work, you must go to your system preferences and enable 'automatically hide and show menu bar'

First, install using:

```sh
brew install cmacrae/formulae/spacebar
```

Seocnd, start using: 

```sh
brew services start spacebar
```

---

Holy sh*t, you're done! If you have any questions please let me know and I will be sure to answer.