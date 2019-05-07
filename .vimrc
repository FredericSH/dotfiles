" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" PLUGIN INSTALLATIONS 
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#begin()

" syntax and autocomplete
Plug 'tpope/vim-markdown'
Plug 'numirias/semshi'
Plug 'tpope/vim-surround'
Plug 'shougo/deoplete.nvim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Auto compilation
Plug 'shime/vim-livedown'
Plug 'lervag/vimtex'

" visual
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'

" misc functionality
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

" fuzzyfind - this is really cool https://vimawesome.com/plugin/fzf
Plug 'junegunn/fzf'

call plug#end()
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" END OF PLUGIN INSTALLATIONS 
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" livedown
nmap gm :LivedownToggle<CR>

" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" semshi
let g:semshi#active = v:true

" set python host to be python3.7 for deoplete (not necessary on newer
" machines)
let g:python3_host_prog = '/usr/bin/python3.7'

" deoplete.
let g:deoplete#enable_at_startup = 1

let g:deoplete#auto_complete_delay = 100

let g:deoplete#auto_completion_start_length = 2
let g:deoplete#enable_smart_case = 1

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Return to visual block when indenting
vnoremap < <gv
vnoremap > >gv

" colour scheme
set background=dark
colorscheme gruvbox

" set the leader to , to make commenting/uncommenting with NERDCommenter
" easier
let mapleader=","

" various useful settings
set backspace=2
set diffopt=horizontal
set nohlsearch
set nocompatible
set tabstop=8
set softtabstop=4
set expandtab
set shiftwidth=4
set wrapmargin=0
set wrap
set ignorecase
set autoindent
set nu
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2
syntax on

" convenient insert and normal mode mappings
imap jk <Esc>
nmap ; :
