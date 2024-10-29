# install homebrew without sudo

```
cd ~

mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```

add below in `.zshrc` file

```
export PATH=$HOME/homebrew/bin:$PATH
```

add below in `.config/fish/config.fish`

```
set -x PATH $PATH $HOME/homebrew/bin
```

### homebrew package installation default location
Mac intel: `open /usr/local/Cellar/`
M1 chip: `open /opt/homebrew/Cellar`
