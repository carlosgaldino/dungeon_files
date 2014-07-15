let g:buffergator_viewport_split_policy = "T"

" gist-vim
let g:gist_clip_command = "pbcopy"
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1

" CtrlP configuration
set wildignore+=*/.hg/*,*/.svn/*,*.so,*/b/*
let g:ctrlp_custom_ignore = '\.git/*\|vendor/ruby/*'
let g:ctrlp_dotfiles = 0

au BufNewFile,BufRead *.clj,*.cljs RainbowParenthesesActivate
au BufNewFile,BufRead *.clj,*.cljs RainbowParenthesesLoadRound

" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    silent let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

" Find all files in all non-dot directories starting in the working directory.
" Fuzzy select one of those. Open the selected file with :e.
nnoremap <leader>f :call SelectaCommand("find * -type f", "", ":e")<cr>

" do not allow vim2hs to fold every function definition
set nofoldenable

let g:haskell_conceal_wide = 1
