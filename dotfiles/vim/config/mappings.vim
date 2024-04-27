nnoremap <CR> :noh<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" save protected files after opening them
cmap w!! w !sudo tee % >/dev/null

" copy selection to the clipboard
vmap <Leader>cp "+y

" editing -- see vimcasts#14
cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <Leader>ew :e %%
map <Leader>es :sp %%
map <Leader>ev :vsp %%
map <Leader>et :tabe %%

" I always do this
cab W w
cab Q q
cab Qa qa
cab Wq wq
cab Wa wa
cab WQ wq
cab X x

" move by screen lines
noremap <Up> gk
noremap <Down> gj
noremap k gk
noremap j gj

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
vmap <C-k> [egv
vmap <C-j> ]egv

" window cycling
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" " Indent if we're at the beginning of a line. Else, do completion.
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>"

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

" format the entire file
" nmap <leader>fef mqggVG=`q

" reload the config
nmap <leader>r :so $MYVIMRC\|:noh<CR>

" toogle numbers.vim
nnoremap <F3> :NumbersToggle<CR>

" mappings for vim-fireplace
au FileType clojure nnoremap <leader>e :Eval<CR>
au FileType clojure nnoremap <leader>E :%Eval<CR>

" add strike-through to a word
au FileType markdown nmap <leader>st ysiw~
au FileType markdown nmap <leader>St ysiW~

" reselect pasted text
nnoremap gp `[v`]
