if has('python3')
endif

set ts=4
set sw=4
set expandtab
set smarttab
set autoindent
set smartindent
set shiftround
set timeoutlen=100
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font:h16
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
set statusline+=%F
set titlestring=%{expand(\"%:p\")}

" https://thoughtbot.com/blog/no-newline-at-end-of-file
" https://stackoverflow.com/questions/1050640/vim-disable-automatic-newline-at-end-of-file
set nofixendofline

let g:gitgutter_max_signs=9999
let g:go_fmt_autosave=0
let g:racer_cmd = "/Users/jihuizheng/.cargo/bin/racer"
let g:webdevicons_enable_vimfiler = 1

let g:vimfiler_direction = 'topleft'
let g:vimfiler_ignore_pattern = [
    \ '^\.git$',
    \ '^\.DS_Store$',
    \ '^\.init\.vim-rplugin\~$',
    \ '^\.netrwhist$',
    \ '\.class$',
    \ '^\.idea',
    \ '^\.pytest_cache',
    \ '__pycache__'
    \]

let g:spacevim_filetree_direction = 'left'
let g:NERDTreeWinPos = "left"
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
    \ '^\.git$',
    \ '^\.DS_Store$',
    \ '^\.init\.vim-rplugin\~$',
    \ '^\.netrwhist$',
    \ '\.class$',
    \ '^\.idea',
    \ '^\.pytest_cache',
    \ '__pycache__',
    \ '_opam',
    \ '_build',
    \ 'bazel-*'
    \]

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

let g:airline_powerline_fonts=1
let g:rainbow_active = 1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|venv)$\|venv',
  \ 'file': '\v\.(exe|so|dll|pyc)$'
  \ }

let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_clear_cache_on_exit = 1
set wildignore+=*/.pytest_cache/*,*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk,*/_opam/*,*/_build/*

autocmd FileType python,go,rust,cpp,hy,java RainbowParentheses
autocmd FileType python,go,rust,cpp,hy,ocaml,dune,java SemanticHighlight
autocmd InsertLeave *.py,*.go,*.hy,*.ml,*.java :SemanticHighlight
map <silent> <C-]> :SemanticHighlight<CR>

let &transparency = 20
let g:hy_enable_conceal = 1
let g:far#source = 'rg'

let g:ocaml_highlight_operators = 1
let g:opamshare = substitute(system('opam config var share'), '\n$', '', '')
autocmd FileType ocaml execute 'source ' . g:opamshare . '/ocp-indent/vim/indent/ocaml.vim'
