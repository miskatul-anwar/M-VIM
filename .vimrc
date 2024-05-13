let mapleader = "\<Space>"

" Set syntax highlighting on
syntax on

" Enable relative numbers
set relativenumber

" Enable line numbers
set number

" Enable mouse support
set mouse=a

" Enable searching as characters are entered in the search pattern
set incsearch

" Highlight search results as characters are entered in the search pattern
set hlsearch

" Ignore case when searching
set ignorecase

" Highlight only on exact match when searching
set smartcase

" Enable auto-indentation
set autoindent

" Enable smart indentation
set smartindent

" Enable wrapping lines
set wrap

" Enable 80 character text width
set textwidth=80

" Enable backspace in insert mode to delete across line breaks
set backspace=indent,eol,start

" Enable displaying the current mode
set showmode

" Set the color scheme


" Remap <Tab> to insert spaces instead of a <Tab> character
set expandtab
set tabstop=4
set shiftwidth=4

" Map <F2> to toggle line numbers
map <F2> :set invnumber<CR>

" Map <F3> to toggle paste mode
map <F3> :set invpaste<CR>:set paste?<CR>

" Map <leader>w to save file
map <leader>w :w<CR>

" Map <leader>q to quit file
map <leader>q :q<CR>

" Map <leader>Q to force quit file
map <leader>Q :q!<CR>

" Map <C-s> to save file
noremap <C-s> :w<CR>

" Map <C-q> to quit file
noremap <C-q> :q<CR>

" Specify a directory for vim-plug to manage plugins
call plug#begin('~/.vim/plugged')

" List of plugins managed by vim-plug
" Add or remove plugins as needed
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'codota/tabnine-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'  " Git integration
Plug 'scrooloose/nerdtree' " File system explorer
" Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'shougo/deoplete.nvim'
Plug 'vim-airline/vim-airline' " Status/tabline
" Plug 'itchyny/lightline.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
Plug 'junegunn/fzf.vim' " Fzf vim integration
Plug 'tpope/vim-surround' " Surroundings manipulation
Plug 'thinca/vim-quickrun'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-commentary'
Plug 'altercation/vim-colors-solarized'
Plug 'shougo/neocomplete.vim'
" Plug  'vim-python-pep8-indent'
" Initialize vim-plug
call plug#end()

" Plugin-specific configurations
" Example configurations for installed plugins
" You can add more configurations as needed
" Vim Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" Fzf
nnoremap <leader>f :FZF<CR>
" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" Terminal
nnoremap <C-t> :terminal<CR>
" Vim Surround
" Change surrounding brackets with S
" Delete surrounding brackets with ds
" Add surrounding brackets with cs
" Example: cs'" will change "word" to "'word'"


" --> This is dashboard for vim
let g:startify_custom_header = ['Welcome to Vim']
highlight StartifyHeader guibg=#333333 guifg=#ffffff gui=bold
let g:startify_lists = [
             \ { 'type': 'dir', 'header': ['   Files in Current Directory'] },
             \ { 'type': 'sessions', 'header': ['   Sessions'] },
             \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
             \ ]
let g:startify_custom_header = [
             \ 'Miskatul Anwar 🤠',
             \ 'https://github.com/miskatul-anwar/',
             \'        ███    ███       ██    ██ ██ ███    ███',
             \'        ████  ████       ██    ██ ██ ████  ████',
             \'        ██ ████ ██ █████ ██    ██ ██ ██ ████ ██',
             \'        ██  ██  ██        ██  ██  ██ ██  ██  ██',
             \'        ██      ██         ████   ██ ██      ██',
             \]
let g:startify_files_number = 10
let g:startify_files = ['~/.vimrc', '~/Documents/*.md', '~/Projects/*.py']
let g:startify_bookmarks = ['~/.vim/bookmarks']
let g:startify_session_dir = '~/.vim/sessions'



" Use coc.nvim for auto-completion
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-python', 'coc-vimlsp']
autocmd FileType javascript,typescript,json setl formatexpr=CocAction('formatSelected')

syntax enable
set background=dark
" colorscheme solarized
" colorscheme dracula
