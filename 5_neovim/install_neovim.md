# Install neo vim

neo vim setup
-------------

1. brew install neovim
in case if brew install doesn't work then, manually download it
    cd ~/soft
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
    tar xzf nvim-macos.tar.gz
    rename foldername to nvim
    set -x NVIM_HOME $HOME/soft/nvim
    set -x PATH $PATH $NVIM_HOME/bin

2. install Vim plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

3. In config.fish add below two lines
alias vim nvim
set -x EDITOR nvim

4. create folder '~/.vim/plugged' (not required)

5. copy init.vim file on below location and paste below contrent
~/.config/nvim/init.vim

For init.vim, instead of above content you can get it from github gist too.
for example: https://gist.github.com/celso/6cefedb9fce92827ee38e8f7411b8b30

in the terminal type vim
------------------------
you might see error 'colorscheme gruvbox' not available
It's ok hit continue
After vim editor is opened hit ESC + : and then type `PlugInstall` and hit enter

copy `.vimrc` file into $HOME directory

Refer below article
https://github.com/junegunn/vim-plug
