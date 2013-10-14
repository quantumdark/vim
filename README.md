## Description

Minimal VIM configuration file based on KISS principle

## How to install?

```
cd ~
git clone https://github.com/aliev/vim.git
mv ~/vim ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "source ~/.vim/vimrc" > .vimrc
vim +BundleInstall +qall # Install all plugins
```

## Key bindings

| Key        | Description
| ---------- |:---------------------------------------------------------------
| ,          | Default leader key
| leader + l | Enable (disable) displaying whitespace
| C + p      | Open CtrlP
| leader + b | Open CtrlPBuffer
| leader + c | Open jedi vim complete pop-up
| leade + ,  | goto definition
| C + _      | Comment selected lines
| [[         | Jump on previous class or function (normal, visual, operator modes)
| ]]         | Jump on next class or function (normal, visual, operator modes)
| [M         | Jump on previous class or method (normal, visual, operator modes)
| ]M         | Jump on next class or method (normal, visual, operator modes)

## Screenshots

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim.png "")

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim1.png "")

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim2.png "")

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim3.png "")

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim4.png "")

![alt text](https://dl.dropboxusercontent.com/u/5837324/vim/vim5.png "")
