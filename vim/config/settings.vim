"""""
"" display
"""""
set t_Co=256
set laststatus=2   " always show status bar
set scrolloff=3    " minimal number of lines to always show above/below the caret
set cursorline     " highlight current line
set number         " show line numbers
set colorcolumn=80 " highlight column 80
set ruler          " show line and column number
set encoding=utf-8 " default enconding to UTF-8
colorscheme molokai

"""""
"" whitespaces
"""""
set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is two spaces
set shiftwidth=2               " when autoidenting(<<) use two spaces
set expandtab                  " convert tab in spaces
set list                       " show invisible characters
set backspace=indent,eol,start " backspace through everything in insert mode

set listchars=""       " reset the listchars
set listchars=tab:\ \  " tab is displayed as ' '
set listchars+=trail:· " show trailing spaces as dots

"""""
"" search
"""""
set hlsearch              " highlight matches
set incsearch             " incremental searching
set ignorecase            " searches are case insensitive
set smartcase             " make search case sensitive if there's a capital letter

syntax on                 " syntax highlighting
filetype plugin indent on
set vb t_vb=              " no beeping

"""""
"" wild settings
"""""
" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

":h last-position-jump
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
