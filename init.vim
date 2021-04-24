"###################
" INICIO INIT.VIM  #
"###################
"Valores
"
" ver numeros
set number 

" interactuar en vim con raton
set mouse=a 

" ancho de numeros de columna
set numberwidth=1 

" copiado al portapapeles
set clipboard=unnamed 

" syntaxis bonita
syntax enable 

" muestra los comandos ejecutados
set showcmd 

" mostrar columna y fila posicionada
set ruler 

" codificacion
set encoding=utf-8 

" ver cierre parentesis
set showmatch 

" identado con 2 espacios
set sw=2 

" muestra el cursor como 0
set relativenumber 

" barra inferior siempre visible
set laststatus=2

" #########
" #Plugins
" #########

call plug#begin('~/.local/share/nvim/plugged')
" Temas
" Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" IDE
" mover entre lineas
Plug 'easymotion/vim-easymotion'

" arbol de archivos
Plug 'scrooloose/nerdtree'

" permite navegar entre archivos con control + hjkl
Plug 'christoomey/vim-tmux-navigator'

" autocompletado 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

" [Un]comment lines with gc
Plug 'tpope/vim-commentary'

call plug#end()

" ##########
" # Configuraciones
" ##########
set t_Co=256
set cursorline

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"colorscheme onehalflight
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" colorscheme gruvbox
" contraste alto
" let g:gruvbox_contrast_dark = "hard"

" mapeo de espacio para utilizar como introducir comando
let mapleader=" "

" al presionar espacio s se ejecuta easymotion
" luego damos 2 caracteres y nos dice que tecla pulsar para saltar
nmap <Leader>s <Plug>(esaymotion-s2)

" al pulsar espacio nt vemos el arbol
" si pulsamos m se abre el menu
nmap <Leader>nt :NERDTreeFind<CR>

" cierra nerd tree al abrir un archivo
" let NERDTreeQuitOnOpen=1

" mapeo para cerrar y abrir solo con espacio + w o q
nmap <Leader>w :w<CR>
nmap <Leader>q :w<CR>

" =========================== COC config ↑

" Support JSONC
autocmd FileType json syntax match Comment +\/\/.\+$+
