Plugin 'ctrlpvim/ctrlp.vim'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\vvendor$'
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'max:20'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
