nnoremap <silent> <Leader><Space> :noh<CR>

" editing -- see vimcasts#14
cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <Leader>e :e %%
map <Leader>es :sp %%
map <Leader>ev :vsp %%
map <Leader>et :tabe %%

" I always do this
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab X x

" move by screen lines
noremap <Up> gk
noremap <Down> gj
noremap k gk
noremap j gj

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
nmap <C-k> [e
nmap <C-j> ]e

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
