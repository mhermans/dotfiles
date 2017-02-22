**Personal dotfiles**

# Setup dotfiles

    cd
    git clone https://github.com/mhermans/dotfiles.git .config/dotfiles
    ln -s dotfiles/user-dirs.dirs .config/user-dirs.dirs
    ln -s dotfiles/.tmux.conf . 
    ln -s dotfiles/.gitconfig  .
    ln -s .config/dotfiles/.gitignore .gitignore 
    ln -s .config/dotfiles/.Renviron .      
    ln -s .config/dotfiles/.vimrc . 
    ln -s .config/dotfiles/.bash_profile .   
    ln -s .config/dotfiles/.bash_aliases .    

# Setup vim

    mkdir ~/.vim/colors
    curl https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim > .vim/colors/molokai.vim
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
