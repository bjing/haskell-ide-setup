set encoding=utf-8
syntax enable               " syntax highlighting
filetype plugin indent on   "allow auto-indenting depending on file type
filetype plugin on
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set showmode
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents
set expandtab               " converts tabs to white space
set smarttab
set smartindent
" set autoindent            " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
"set updatetime=800          " Make it shorter for messages to show faster
                            " This is set as per mouse hover tooltip popup time
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"

" execute pathogen#infect()
"


"""""""""""""""""""""""""""""""""""""""""
" Leader!
"""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let localmapleader = "\<Space>"


"""""""""""""""""""""""""""""""""""""""""
" Vim Plug
"""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.config/nvim/plugged")
" Plugin Section
 Plug 'dracula/vim', {'as': 'dracula'}
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
 Plug 'EdenEast/nightfox.nvim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'PhilRunninger/nerdtree-visual-selection'
 Plug 'preservim/nerdcommenter' | Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovimhaskell/haskell-vim'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'alx741/vim-stylishask'
 Plug 'alx741/vim-hindent'
 Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'chrisbra/csv.vim'
 Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
 Plug 'monkoose/fzf-hoogle.vim'
call plug#end()


""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

"Toggle NERDTree with Ctrl-N
" map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

""""""""""""""""""""""""""""""""""""""""""""""
" CoC
""""""""""""""""""""""""""""""""""""""""""""""

" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
" 
" " Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 

" GoTo code navigation.
" The CursorHold hover action is terrible because there's no way to silence errors
""autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call CocActionAsync('doHover')<cr>
map <Leader> gn <Plug>(coc-diagnostic-next)
map <Leader> gp <Plug>(coc-diagnostic-prev)
map <Leader> rn <Plug>(coc-rename)
map <Leader> rf <Plug>(coc-refactor)
map <Leader> qf <Plug>(coc-fix-current)

map <Leader> al <Plug>(coc-codeaction-line)
map <Leader> ac <Plug>(coc-codeaction-cursor)
map <Leader> ao <Plug>(coc-codelens-action)

nnoremap <Leader>kd :<C-u>CocList diagnostics<Cr>
nnoremap <Leader>kc :<C-u>CocList commands<Cr>
nnoremap <Leader>ko :<C-u>CocList outline<Cr>
nnoremap <Leader>kr :<C-u>CocListResume<Cr>

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
 
" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


"""""""""""""""""""""""""""""""""""""""""
" CoC Metals
"""""""""""""""""""""""""""""""""""""""""
" Help Vim recognize *.sbt and *.sc as Scala files
au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

" Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" Toggle panel with Tree Views
nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>


"""""""""""""""""""""""""""""""""""""""""
" Haskell VIM
"""""""""""""""""""""""""""""""""""""""""
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"""""""""""""""""""""""""""""""""""""""""
" Hoogle
"""""""""""""""""""""""""""""""""""""""""
augroup HoogleMaps
  autocmd!
  autocmd FileType haskell nnoremap <buffer> <Leader>hh :Hoogle <C-r><C-w><CR>
augroup END

"""""""""""""""""""""""""""""""""""""""""
" Colour scheme
"""""""""""""""""""""""""""""""""""""""""
"colorscheme dracula
"colorscheme tokyonight
colorscheme nightfox


"""""""""""""""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

