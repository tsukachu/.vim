if !filereadable(expand('~/.vim/autoload/plug.vim'))
    ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


call plug#begin('~/.vim/plugged')

" Package list
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'

call plug#end()

runtime! inits/**/*.vim