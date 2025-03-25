if has('nvim')
    inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
    inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
endif

" Activer la numérotation des lignes
set number
"
"
" " Utiliser l'indentation automatique
set autoindent
set smartindent
"
" " Définir la largeur de tabulation
set tabstop=4       " Nombre d'espaces pour un tab
set shiftwidth=4    " Nombre d'espaces pour l'indentation
set expandtab       " Remplacer les tabs par des espaces
"
" " Rechercher en temps réel
set incsearch
"
" " Ignorer la casse lors des recherches
set ignorecase
set smartcase       " Ignore la casse sauf si une lettre majuscule est utilisée
"
" " Activer le surlignage des résultats de recherche
set hlsearch
"
" " Activer le mode de sélection visuelle avec la souris
set mouse=a
"
" " Activer les numéros de colonne
set ruler
"
" " Activer le mode de ligne
set showcmd
"
" " Améliorer l'affichage des caractères spéciaux
set list
set listchars=tab:→\ ,trail:·,extends:>,precedes:<
"
" " Configurer l'interface
set background=dark   " ou 'light' selon votre thème
colorscheme desert     " Choisissez un schéma de couleurs
"
" " Sauvegarder automatiquement à l'écriture
" autocmd BufWritePre * :%s/\s\+$//e " Supprimer les espaces en fin de ligne
"
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
"===============================PLUG================================
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'chrisbra/csv.vim'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
if has('nvim')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-tree/nvim-web-devicons' " optional
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
endif
call plug#end()
"
" " Activer la coloration syntaxique
syntax on


if has('nvim')
    source ~/.config/nvim/lua-tree.lua
    colorscheme nordic
endif
