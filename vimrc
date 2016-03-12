""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My vimrc is based on the the vimrc of Amix:
" 	http://amix.dk/vim/vimrc.html
" I really appreciate his configurattion, but I also add my own features
" such as vundle,ctrlp,ultisnips,etc.
"
" Author: xautjzd
" Homepage: http://xautjzd.github.com
" Email: xautjzd@gmail.com
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               "disable vi compatibility
filetype off                   "required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"File Tree plugin NERDTree
Plugin 'scrooloose/nerdtree'

"File switch from on to another
Plugin 'kien/ctrlp.vim'

"snippets
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Auto complete plugin
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/neocomplcache.vim'

" Code comment and decomment
Plugin 'tomtom/tcomment_vim'

Plugin 'majutsushi/tagbar'

" Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/vim-easymotion'
" write HTML code faster(inspired by zencodeing)
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ColorScheme
Plugin 'tomasr/molokai'

"Airline
Plugin 'bling/vim-airline'

" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'

" Vim-LaTex
" Plugin 'lervag/vimtex'
Plugin 'octol/vim-cpp-enhanced-highlight'
" Utility
" Plugin 'repeat.vim'
" Plugin 'tpope/vim-surround'

Plugin 'junegunn/goyo.vim'

" Plugin 'plasticboy/vim-markdown'
" Plugin 'tpope/vim-markdown'

"vimdeck depend on it
" Plugin 'SyntaxRange'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','

"Disable up、down、left、right
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Edit my vimrc file through <leader>ev default leader is \
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Take the contents of given file and execute it in Vimscript, default $MYVIMRC is ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Type <leader>" vim will surround the word in double quotes
" nnoremap <leader>" bi"<esc>lwa"<esc>l

"Automatically append closing characters
" inoremap ( ()<Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i

" To save, press <c-s>
" imap <c-s> <ESC>:w<CR>a

" Disable escape key in insert mode, <nop>(no operation)
inoremap jk <esc>

nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>w :w<cr>

" Set how many lines of history Vim has to remember
set history=1000

"Display the line number
set number

set autoread       " Reload files when changed

set textwidth=79   " Lines longer than 79 columns will be broken

" set ruler
set autoindent     " Align the new line indent with the previous line
set smartindent   
set tabstop=4      " Set number of spaces that a <Tab> in the file counts for
set softtabstop=4  " Insert/delete 4 spaces when hitting a TAB/BACKSPACE 
set expandtab      " Insert spaces when hitting TABs
set cindent
set shiftwidth=4   " Operation >> indents 4 columns; << unindents 4 columns 

" autocmd: specify commands to be executed automatically when reading or
" writing a file, when entering or leaving a buffer or window
" More information, please refer to:
" http://learnvimscriptthehardway.stevelosh.com/chapters/12.html
autocmd BufRead,BufNewFile *.rb set shiftwidth=2  " If edit *.rb file,shiftwidth is 2; otherwise, it's 4
autocmd BufRead,BufNewFile *.rb set tabstop=2  " If edit *.rb file,shiftwidth is 2; otherwise, it's 4
autocmd BufRead,BufNewFile *.rb set softtabstop=2
" autocmd BufWritePre * :normal gg=G

" Set code folding method
set foldmethod=indent    " syntax
" Unfold when open file
set foldlevelstart=99
" press space to fold/unfold code
" nnoremap <space> za
" vnoremap <space> zf


" When setting showcmd, the bottom line will show you information about the
" current command going on
set showcmd

" Set vim default display encode
set encoding=utf-8
"set file encoding when save or new file
set fileencoding=utf-8
"file encode list,when vim read file,it will detect according to this config
set fileencodings=utf-8,gbk,gb2312
" set guifont=*

" enable copy vim content to another application.
" vim --verision: must have xterm_clipboard support(install vim-gnome)
set clipboard=unnamedplus

" Set git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight the current line
set cursorline

"Highlight the search result and incremental search
set hlsearch
set incsearch

" Status line config
set laststatus=2  "Always show the status line
set t_Co=256

"Set the colortheme of vim
colorscheme molokai


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" UltiSnips
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

" NERDTree
let NERDTreeWinSize=20

" ctrlP
let g:ctrlp_extensions = ['tag']

let g:ctrlp_working_path_mode='ra' " c: the directory of the current file; r: the nearest ancestor that contains one of these directories or files:.git .hg .svn .bzr

" Exclude files and directorys
" unlet g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
			\ 'file': '\v\.(so|swap|tar|zip|jar|jpg|png|pdf|doc|docx|gz|bz2|rpm|deb)$',
			\}

" TagBar
set tags=./tags,tags;/
let g:tagbar_width=20   " Set tagbar window width

" Vim-airline
let g:airline_powerline_fonts=1 " Let airline plugin use the arrow effect of powerline
"set vim statusbar theme
let g:airline_theme="molokai"

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YouComepleteMe
" Set YouCompleteMe trigger key 
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" Enable NeoComplCache
" let g:neocomplcache_enable_at_startup=1

" Goyo
function! g:goyo_before()
	silent !tmux set status off
endfunction

function! g:goyo_after()
	silent !tmux set status on
endfunction

let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]
noremap <leader>g :Goyo<CR>

" Sparkup
" let g:sparkup = 'bundle/sparkup/sparkup.py'
" let g:sparkupExecuteMapping = '<c-x>'
" let g:sparkupNextMapping = '<c-e>'

" Vim-markdown
" let g:vim_markdown_folding_disabled=1

" Set shorcut key
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
" Stop automatic indentation when copied from another application at insert
" mode
set pastetoggle=<F2>

" autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>  " ruby syntax gets checked on pressing <F9> key
