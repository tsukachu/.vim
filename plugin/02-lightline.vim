" Always display status line
set laststatus=2

" Use Unicode encoding twice as wide as ASCII
set ambiwidth=double

" Non-display mode change message
set noshowmode

let g:lightline = {
        \ 'colorscheme': 'onedark',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'readonly', 'filename', 'modified', 'anzu' ] ]
        \ },
        \ 'component_function': {
        \   'fugitive': 'LightlineFugitive',
        \   'readonly': 'LightlineReadonly',
        \   'anzu': 'anzu#search_status',
        \ },
        \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
        \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" }
        \ }

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? "\u2b60 ".branch : ''
  endif
  return ''
endfunction

function! LightlineReadonly()
  return &readonly ? "\u2b64" : ""
endfunction