function! myspacevim#before() abort
  let g:mapleader = ";"
endfunction

function! myspacevim#after() abort
  set scrolloff=10
  set sidescrolloff=10
  set ruler
  set colorcolumn=120
endfunction
