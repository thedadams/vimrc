" Plug
call plug#begin()
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
Plug 'jistr/vim-nerdtree-tabs', {'on': 'NERDTreeToggle'}
Plug 'lervag/vimtex', {'for': 'tex'}
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
Plug 'qpkorr/vim-bufkill'
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
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeIgnore=['\.git$', '.DS_Store']
let g:CCSpellCheckEnable=1
let g:CCSpellCheckMatchGroupName='SpellBad'
let g:pymode_python = 'python3'

" Keybindings
map <C-n> :NERDTreeToggle<CR>

" Autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Commands
:autocmd BufWritePre * :Codespell

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('go', 'cyan', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('py', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('tex', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

call NERDTreeHighlightFile('pdf', 'red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('docx', 'red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('xlsx', 'red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('pptx', 'red', 'none', 'red', '#151515')


