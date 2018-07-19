" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
let g:plug_timeout = 600

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Plug 'scrooloose/nerdtree'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" TODO run next plugins
Plug 'lyokha/vim-xkbswitch'

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-syntax-flowtype'
" Plug 'chemzqm/vim-jsx-improve'
Plug 'prettier/vim-prettier'
Plug 'flowtype/vim-flow'

" TODO Check this plugs
" https://github.com/svermeulen/vim-easyclip
" Plug 'svermeulen/vim-easyclip'

" Initialize plugin system
call plug#end()


" Color & UI settings
"=============================================================================
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
set colorcolumn=78
set winwidth=80
set list
set listchars=eol:¶,tab:┃\ ,trail:°,conceal:§,extends:→,precedes:←,nbsp:↔

" Formatter settings
"=============================================================================
set virtualedit=block
set linebreak
set formatoptions-=o
set autoindent
set smartindent
set noexpandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set scrolljump=1
set scrolloff=3
set noshowmatch


" Move cursor settings
"=============================================================================
set whichwrap=b,s,h,l,<,>,[,]


" Buffers settings
"=============================================================================
set autoread
set autowrite
set autowriteall
set hidden
set exrc

" Search settings
"=============================================================================
set ignorecase
set smartcase
set gdefault


" Swap & backup & write file settings
"=============================================================================
set nobackup
set noswapfile
set writeany


" History & undo settings
"=============================================================================
set history=10000
set undodir=/tmp/nvim/undodir/
set undofile
set undolevels=1000
set undoreload=1000


" Foldlevel settings
"=============================================================================
set foldlevel=0


" Mouse settings
"=============================================================================
set mouse=a


" Mapleader settings
"=============================================================================
let mapleader = ' '


" Keybinding settings
"=============================================================================
" Go to window
"-------------------------
nmap <leader>ww <c-w>w
nmap <leader>wh <c-w>h
nmap <leader>wj <c-w>j
nmap <leader>wk <c-w>k
nmap <leader>wl <c-w>l
nmap <leader>wt <c-w>t
nmap <leader>wb <c-w>b
" Move window
"-------------------------
nmap <leader>wmh <c-w><s-h>
nmap <leader>wmj <c-w><s-j>
nmap <leader>wmk <c-w><s-k>
nmap <leader>wml <c-w><s-l>
" No highlight search
"-------------------------
nnoremap <leader><esc> :nohlsearch<cr>
" Set foldlevel
"-------------------------
noremap <silent> <leader>1 :set foldlevel=0<CR>
noremap <silent> <leader>2 :set foldlevel=1<CR>
noremap <silent> <leader>3 :set foldlevel=2<CR>
noremap <silent> <leader>4 :set foldlevel=9<CR>
" Shift/unshift visual block
"-------------------------
vnoremap > >gv
vnoremap < <gv
" Switch pastetoggle
"-------------------------
set pastetoggle=<leader>p
" Remap Omnycomplete
"-------------------------
imap <A-n> <C-x><C-o>


" TODO fix XKB switch
" XkbSwitch settings
"=============================================================================
" let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchEnabled = 1


" Gruvbox settings
"=============================================================================
let g:gruvbox_contrast_light='hard' " soft | medium | hard
let g:gruvbox_contrast_dark='soft' " soft | medium | hard
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_italicize_strings=1
let g:gruvbox_invert_selection=0
colorscheme gruvbox
hi Cursor guifg=#ffffff guibg=#000000 gui=bold
hi Visual guibg=#000000
hi NonText guifg=#282828 gui=none cterm=none
hi VertSplit guifg=#000000 gui=bold cterm=bold


" FZF settings
"=============================================================================
nnoremap <leader>. :FZF
nnoremap <leader>.. :FZF ./<cr>
nnoremap <leader>.s :FZF src<cr>


" UltiSnips settings
"=============================================================================
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsEnableSnipMate=1
let g:UltiSnipsSnippetDirectories=[
\	$HOME.'/.config/nvim/UltiSnips',
\]

let g:UltiSnipsExpandTrigger='<A-g>'
let g:UltiSnipsListSnippets='<A-a>'
let g:UltiSnipsJumpForwardTrigger='<A-f>'
let g:UltiSnipsJumpBackwardTrigger='<A-b>'


" NERDTree settings
"=============================================================================
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=40
noremap <silent> <leader>ff :NERDTreeFind<CR>
noremap <silent> <leader>ft :NERDTreeToggle<CR>
noremap <silent> <leader>fq :let g:NERDTreeQuitOnOpen=!g:NERDTreeQuitOnOpen<CR>


" NERDCommenter settings
"=============================================================================
let g:NERDSpaceDelims=1
let g:NERDRemoveExtraSpaces=1
let g:NERDCustomDelimiters = {
\	'javascript.jsx':
\	{
\		'left': '//',
\		'leftAlt': '{/*', 'rightAlt': '*/}'
\	}
\}


" Markdown settings
"=============================================================================
let g:markdown_fenced_languages = [
\	'html',
\	'python',
\	'bash=sh',
\	'javascript',
\	'json'
\]


" Fugitive settings"
" ============================================================================
nmap <silent> <leader>gb :.Gblame<cr>
vmap <silent> <leader>gb :Gblame<cr>
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>gw :Gwrite<cr>
nmap <silent> <leader>gd :Gvdiff<cr>
nmap <silent> <leader>gc :Gcommit<cr>
nmap <silent> <leader>gca :Gcommit -a<cr>
nmap <silent> <leader>gcf :Gcommit -a --amend<cr>


" javascriptplugin settings
" ============================================================================
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Flow settings
" ============================================================================
let g:flow#autoclose=1
let g:flow#enable=1
let g:flow#omnifunc=1
let g:flow#errjmp=1


" Autocommands
" ============================================================================
autocmd BufWrite * silent! %s/\s\+$//


" vim: set ft=vim :
