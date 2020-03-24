if exists('g:vscode')
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine
  nnoremap K A<CR><Esc>
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  " Plug
  call plug#begin()
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
  Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
  Plug 'jistr/vim-nerdtree-tabs', {'on': 'NERDTreeToggle'}
  Plug 'lervag/vimtex', {'for': 'tex'}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'nsf/gocode', {'for': 'go'}
  Plug 'vim-jp/vim-go-extra', {'for': 'go'}
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'kaicataldo/material.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'thedadams/vim-codespell'
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'neomake/neomake'
  Plug 'python-mode/python-mode', { 'for': 'python'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'airblade/vim-gitgutter'
  Plug 'qpkorr/vim-bufkill'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-fugitive'
  Plug 'wakatime/vim-wakatime'
  Plug 'sjl/vitality.vim'
  Plug 'junegunn/vim-slash'
  Plug 'tpope/vim-commentary'
  Plug 'skielbasa/vim-material-monokai'
  call plug#end()

  set autoindent
  set smarttab
  set shiftwidth=4
  set tabstop=4
  set expandtab
  set nobackup
  set nowritebackup
  set noswapfile
  set showmode
  set number
  set wrap
  set linebreak
  set backspace=indent,eol,start
  set laststatus=2
  set backspace=2
  set background=dark
  syntax on
  set termguicolors
  colorscheme material-monokai
  let g:materialmonokai_italic=1
  set encoding=UTF-8
  " set macligatures
  "set guifont=FuraCode\ Nerd\ Font\ Mono:h12
  hi clear SpellBad
  hi SpellBad gui=undercurl guisp=red

  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }

  let NERDTreeShowHidden=1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeIgnore=['\.git$', '.DS_Store']
  let g:CCSpellCheckEnable=1
  let g:CCSpellCheckMatchGroupName='SpellBad'
  let g:pymode_python = 'python3'
  let g:pymode_options = 0
  let g:pymode_options_max_line_length = 120
  let g:CodespellShortWord = 4
  let g:go_fmt_fail_silently = 0
  let g:go_metalinter_autosave = 1
  let g:go_fmt_autosave = 1
  let g:go_fmt_command = "goimports"
  let g:go_autodetect_gopath = 1

  " Keybindings
  map <C-n> :NERDTreeToggle<CR>
  nnoremap K A<CR><Esc>

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

  call NERDTreeHighlightFile('go', 'cyan', 'none', '#ffa500', 'NONE')
  call NERDTreeHighlightFile('py', 'cyan', 'none', 'cyan', 'NONE')
  call NERDTreeHighlightFile('tex', 'green', 'none', 'green', 'NONE')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', 'NONE')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', 'NONE')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', 'NONE')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', 'NONE')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', 'NONE')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', 'NONE')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'NONE')
  call NERDTreeHighlightFile('js', 'Red', 'none', 'red', 'NONE')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', 'NONE')

  call NERDTreeHighlightFile('pdf', 'red', 'none', 'red', 'NONE')
  call NERDTreeHighlightFile('docx', 'red', 'none', 'red', 'NONE')
  call NERDTreeHighlightFile('xlsx', 'red', 'none', 'red', 'NONE')
  call NERDTreeHighlightFile('pptx', 'red', 'none', 'red', 'NONE')
endif
