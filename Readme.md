To bootstrap your configuration files, run below command.  This will create a bunch of symlinks and backup your original 

```bash
./setup.bsh <your home dir>
```

If you need customization for bash, git, or vim.  You can create the following files in your home, they are read in after the
corresponding rc files.

* .bashrc_custom
* .gitconfig_custom
* .vimrc_custom
