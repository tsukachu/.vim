if !filereadable(expand('~/.vim/autoload/plug.vim'))
    ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


call plug#begin('~/.vim/plugged')

" Package list

" colorscheme
" Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

runtime! inits/**/*.vim