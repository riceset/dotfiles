<h1 align="center">
	dotfiles
</h1>

<p align="center">
	<b><i>My dotfiles.</i></b><br>
</p>

<img width="1470" alt="Screenshot 2024-01-24 at 16 31 13" src="https://github.com/riceset/dotfiles/assets/48802655/cdb35d4f-50a2-4168-9cf5-bf251f23cf26">

## Setting it up!

### Requirements

- [Stow](https://www.gnu.org/software/stow/)
- [Brew](https://brew.sh/)

### Homebrew

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install packages from the [Brewfile](https://github.com/riceset/dotfiles/blob/main/Brewfile):

```sh
# Run from the dotfiles directory
brew bundle

# Or
brew bundle --file ~/dotfiles/Brewfile
```

### Setting up dotfiles

cd into packages and run:

```sh
stow -vRt ~ *
```

<a href="https://github.com/riceset/"><img align='right' src='https://user-images.githubusercontent.com/48802655/110702518-5fc7a700-81d1-11eb-9bff-35a31eb4f6d0.gif' width='60'></a>
