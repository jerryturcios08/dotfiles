" !==========================================================================!
" !==========================================================================!
"
"
"  Title: Personal .vimrc File
"  By: Jerry Turcios
"  Sections:      General     VIM Interface     Colors      Undo/Backup/SWP
"
"
" !==========================================================================!
" !==========================================================================!


" !================================== General ===============================!


" !-------- Plugin + Configuration Section --------!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'jiangmiao/auto-pairs'
Plugin 'wincent/command-t'
Plugin 'nikvdp/ejs-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'arcticicestudio/nord-vim'
Plugin 'powerline/powerline'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'edkolev/tmuxline.vim'
Plugin 'SirVer/ultisnips'
Plugin 'mbbill/undotree'
Plugin 'dracula/vim'
Plugin 'shougo/vimproc'
Plugin 'shougo/vimshell'
Plugin 'benmills/vimux'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vhdirk/vim-cmake'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'VundleVim/Vundle.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" !---- Settings for Airline plugin below ----!

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='distinguished'
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

" !---- Settings for NERDTree plugin below ----!

let NERDTreeWinSize=30

" !---- Settings for Supertab plugin below ----!

let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

" !---- Settings for Syntastic plugin below ----!

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_java_checkers = []
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes=['gitcommit']
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
let g:syntastic_quiet_messages = {
        \ "!level":  "errors",
        \ "type":    "style",
        \ "regex":   '\m\[C03\d\d\]',
        \ "file:p":  ['\m^/usr/include/', '\m\c\.h$'] }

" !---- Settings for Tagbar plugin below ----!

let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=30                          " Default is 40, seems too wide
noremap <silent> <Leader>y :TagbarToggle       " Display panel with y (or ,y)

" !---- Settings for Tmuxline plugin below ----!

let g:tmuxline_preset = 'powerline'
let g:tmuxline_powerline_separators = 0

" !---- Settings for UltiSnips plugin below ----!
 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" !---- Settings for YouCompleteMe plugin below ----!

let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set completeopt-=preview

" !---- End of Plugin + Configuration Section ----!

set nocompatible                        " be iMproved, required
filetype off                            " required
set noshowmode                          " Disables the default mode display
set history=1000                        " Lines of history VIM has to remember
filetype plugin on                      " Enable filetype plugin
set autoread                            " Set auto read when a file is changed
let mapleader=","                       " Extra key combination
nmap <leader>w :w!<cr>                  " Fast saving
set fileformats=unix,dos,mac            " Open files from mac/dos
set exrc                                " Enable per-directory .vimrc files
set secure                              " Disable unsafe commands in .vimrc
syntax on                               " Enable syntax
map <C-J> :next <CR>                    " Switch between files using ctrl + l
map <C-K> :prev <CR>                    " Switch between files using ctrl + h


" !=============================== VIM Interface ============================!


filetype indent on                      " Enables auto-indentation
set encoding=utf-8                      " Sets the default encoding
set guioptions=                         " Removes scrollbars in MacVim
set guioptions-=T                       " Makes MacVim's toolbar visible
set laststatus=2                        " Makes the status line visible
set guifont=Monaco:h12                  " Manually set font
set wildmenu                            " Turn on wild menu
set wildignore=*.o,*~,*.pyc             " Ignored compiled files
set wildmode=list:longest,full          " Auto-completes longest common command
set ruler                               " Always show current position
set showcmd                             " Shows what command you are typing
set cmdheight=1                         " Height of the command bar
set mouse=a                             " Enable mouse usage
set modeline                            " Show what I'm doing
set backspace=eol,start,indent          " Allow backpaces
set ignorecase                          " Ignore case when searching
set hlsearch                            " Highlight search results
set showmatch                           " Display matching brackets
set mat=2                               " Blink when matching brackets
set noerrorbells                        " Turn off error bell sounds
set novisualbell                        " Turn off bell sounds
set t_vb=                               " Disable beeping
set tm=500                              " Disable annoying sounds
set hidden                              " Don't unload buffer
set number                              " Line numbers
set autoindent                          " Autoindent on
set nojoinspaces                        " Don't add random white space
set scrolloff=10                        " 10 lines above and below cursor
set textwidth=80                        " Text width is 80
set bs=2                                " Fix backspacing in insert mode
set smartindent                         " Enable smart indent
set ruler                               " Enable ruler
set shiftwidth=2                        " Enable shift width in 2 spaces
set tabstop=2                           " Tab is 2 spaces
set expandtab                           " Expand the tab
set wrap                                " Wrap lines
highlight OverLength                           
                \ ctermbg=red           " Over 80 lines
                \ ctermfg=white
                \ guibg=#8F0000
match OverLength /\%81v.\+/             " Match overlength
hi ColorColumn
                \ guibg=#FF0000         " Highlight overlength
                \ ctermbg=246
if !has('gui_running')                  " Enables 256 color when
  set t_Co=256                          " GUI version is running
endif


" !================================== Colors ================================!


" Sets default color
colorscheme monokai_pro 


" !============================= Undo/Backup/SWP ============================!


set undofile                            " Undo's file
set undodir=$HOME/.vim/undo             " Need a directory in ./vim called undo
set undolevels=1000                     " Maximum number of changes
set undoreload=10000                    " Maximum number lines to save for undo
set noswapfile                          " No swap file

