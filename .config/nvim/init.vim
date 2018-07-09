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
" Plug 'lyokha/vim-xkbswitch'

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()


" Color & UI settings
"=============================================================================
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
set colorcolumn=78
set winwidth=80


" swap & backup settings
"=============================================================================
set nobackup
set noswapfile


" mouse settings
"=============================================================================
set mouse=a

" mapleader settings
"=============================================================================
let mapleader = ' '


" XkbSwitch settings
"=============================================================================
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
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
\	$HOME.'/.config/nvim/snippets'
\]

let g:UltiSnipsExpandTrigger='<A-g>'
let g:UltiSnipsListSnippets='<A-a>'
let g:UltiSnipsJumpForwardTrigger='<A-f>'
let g:UltiSnipsJumpBackwardTrigger='<A-b>'


" NERDTree settings
"=============================================================================
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=60
noremap <silent> <leader>ff :NERDTreeFind<CR>
noremap <silent> <leader>ft :NERDTreeToggle<CR>
noremap <silent> <leader>fq :let g:NERDTreeQuitOnOpen=!g:NERDTreeQuitOnOpen<CR>

" vim: set ft=vim :
