function TrimWhiteSpace()
  %s/\s\+$//ge
    ''
  set list listchars=trail:.,extends:>
  autocmd FileWritePre * :call TrimWhiteSpace()
  autocmd FileAppendPre * :call TrimWhiteSpace()
  autocmd FilterWritePre * :call TrimWhiteSpace()
  autocmd BufWritePre * :call TrimWhiteSpace()

  noremap <leader>w :call TrimWhiteSpace()<CR>
  map <F2> :call TrimWhiteSpace()<CR>
  map! <F2> :call TrimWhiteSpace()<CR>
endfunction

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Monaco:h11
set guifontwide=NSimsun:h12
set paste
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set cc=80
set viminfo+=<50,s10

call pathogen#infect()
syntax on

filetype plugin indent on
syntax enable

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
if has('gui_running')
  set background=light
else
  set background=dark
endif

colorscheme solarized

