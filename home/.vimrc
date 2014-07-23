"" .vimrc for Mike Hull

" Setup pathogen:
set nocompatible
filetype off
call pathogen#infect()
call pathogen#helptags()



" Don't backup or swap files
set nobackup
set nowritebackup
set noswapfile


" Basic per-file settings:
syntax on
filetype on
filetype plugin indent on




" Rather major settings:
set autochdir
let mapleader=","             " change the leader to be a comma vs slash


" Tab-expansion:
set expandtab
set textwidth=79
"set textwidth=0
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent


" Use the vivid-chalk plugin for colors
colorscheme vividchalk
colorscheme desert


"" Key configuration:
"""""""""""""""""""""""""
"
" Allow Ctrl-<dir> to shift between splits:
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>


" Convieniance mappings
imap jj <Esc>
nmap ; :






"" ==========================================================
"" Basic GUI Settings
"" ==========================================================
set history=10000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set nowrap
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**




set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced


"""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.



"""" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.



""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex





















"" MH BELOW:
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>





" Re-'source' .vimrc when saving
:au! BufWritePost $MYVIMRC source $MYVIMRC
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>





"" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
set list



"" File-specific issues:
autocmd BufRead,BufNewFile wscript set filetype=python
autocmd BufRead,BufNewFile SConscript set filetype=python
autocmd BufRead,BufNewFile SConstruct set filetype=python
autocmd FileType make setlocal noexpandtab
"
"
