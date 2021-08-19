syntax on 
set clipboard=unnamed
set number
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set linebreak
set backspace=2
set showcmd

let mapleader = "," 
" Mapping to reload configuration 
" Pressing ,so to source as a shortcut
nmap <leader>so :source ~/.vimrc<CR>

" Opens the terminal at the vertical right
nmap <leader>t :botright vertical terminal<CR>

nmap <F8> :SCCompile<cr>
nmap <F9> :SCCompileRun<cr>

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"MY OWN INSTALLED PLUGINS

" Dark theme
Plug 'KeitaNakamura/neodark.vim'
set laststatus=2
let g:neodark#background = '#202020'

" LightLine
Plug 'itchyny/lightline.vim'

" Automatically closes brackets, braces etc.
Plug 'jiangmiao/auto-pairs'

"Syntax/Logic checker
Plug 'vim-syntastic/syntastic'

"Comments on normal mode
Plug 'tpope/vim-commentary'

"Live Preview for HTML, CSS and JavaScript
Plug 'turbio/bracey.vim'

"multiline/cursor thing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'Dinduks/vim-java-get-set'

" Initialize plugin system
call plug#end()
