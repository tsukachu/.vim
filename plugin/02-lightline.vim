" Always display status line
set laststatus=2

" Use Unicode encoding twice as wide as ASCII
set ambiwidth=double

" Non-display mode change message
set noshowmode

let g:lightline = {
        \ 'colorscheme': 'onedark',
        \ 'component': {
        \   'readonly': '%{&readonly?"\u2b64":""}',
        \ },
        \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
        \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" }
        \ }