# dotfiles
![setup](https://user-images.githubusercontent.com/48802655/129465450-f52b9712-3d60-4d71-8950-50328c4ba816.png)

## Setting it up

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
stow -v -R -t ~ *
```

<a href="https://github.com/riceset/"><img align='right' src='https://user-images.githubusercontent.com/48802655/110702518-5fc7a700-81d1-11eb-9bff-35a31eb4f6d0.gif' width='60'></a>
