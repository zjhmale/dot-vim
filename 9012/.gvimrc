if has('python3')
endif

set timeoutlen=100
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font:h16

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
let g:racer_cmd = "/Users/jihuizheng/.cargo/bin/racer"
let g:webdevicons_enable_vimfiler = 1

let g:NERDTreeWinPos = "left"
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
    \ '^\.git$',
    \ '^\.DS_Store$',
    \ '^\.init\.vim-rplugin\~$',
    \ '^\.netrwhist$',
    \ '\.class$',
    \ '^\.idea',
    \ '^\.pytest_cache',
    \ '__pycache__'
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
set wildignore+=*/.pytest_cache/*,*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk

autocmd VimEnter * RainbowParentheses
autocmd FileType python,rust,cpp,hy SemanticHighlight
autocmd InsertLeave *.py,*.hy :SemanticHighlight

set ts=4 sw=4

map <silent> <C-]> :SemanticHighlight<CR>

let &transparency = 20

let g:hy_enable_conceal = 1

let g:far#source = 'rg'

