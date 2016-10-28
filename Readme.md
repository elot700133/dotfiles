To bootstrap your configuration files, run below command.  This will create a bunch of symlinks and backup your original and download all vim plugin

```bash
cd dotfiles
./setup.bsh <your home dir>
git clone https://github.com/VundleVim/Vundle.vim.git $home_folder/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/dotfiles/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

If you need customization for bash, git, or vim.  You can create the following files in your home, they are read in after the
corresponding rc files.

* .bashrc_custom
* .gitconfig_custom
* .vimrc_custom
