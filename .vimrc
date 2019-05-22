" Plug
call plug#begin()
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
Plug 'jistr/vim-nerdtree-tabs', {'on': 'NERDTreeToggle'}
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode'
Plug 'vim-jp/vim-go-extra'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'thedadams/vim-codespell'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'neomake/neomake'
Plug 'python-mode/python-mode', { 'for': 'python'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
call plug#end()

set autoindent
set smarttab
set tabstop=4
set expandtab
set nobackup
set nowritebackup
set noswapfile
set showmode
set number
set laststatus=2
set backspace=2
set background=dark
colorscheme PaperColor
set encoding=UTF-8
set macligatures
set guifont=FuraCode\ Nerd\ Font\ Mono:h12
hi clear SpellBad
hi SpellBad gui=undercurl guisp=red


let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$', '.DS_Store']
let g:CCSpellCheckEnable=1
let g:CCSpellCheckMatchGroupName='SpellBad'

" Keybindings
map <C-n> :NERDTreeToggle<CR>

" Commands
:autocmd BufWritePre * :Codespell

