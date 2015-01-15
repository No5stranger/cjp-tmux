#!/usr/bin/env bash
/usr/bin/env git clone https://github.com/No5stranger/cjp-tmux.git $HOME/.tmux
/usr/bin/env git clone https://github.com/erikw/tmux-powerline.git $HOME/.tmux/tmux-powerline
if [ -f $HOME/.tmux.conf ]
then
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi
if [ -f $HOME/.tmux-powerlinerc ]
then
    mv $HOME/.tmux-powerlinerc $HOME/.tmux-powerlinerc.bak
fi
ln -s $HOME/.tmux/tmux.conf $HOME/.tmux.conf
cd $HOME/.tmux/tmux-powerline
sh generate_rc.sh
mv $HOME/.tmux-powerlinerc.default $HOME/.tmux-powerlinerc
