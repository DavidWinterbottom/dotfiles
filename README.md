dotfiles.git
============
Clone and run this to setup env 

```sh
cd $HOME
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```

Modified from the values specified in
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
