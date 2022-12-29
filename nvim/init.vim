""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Owner: Tejeshwar (tejashwar27@gmail.com)
""""""""""""""""""""""""""""""""""""""""""""""""""""""


:set number
:set relativenumber
:set mouse=a

:set clipboard+=unnamedplus

:set autoread " To reload changed file automatically

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview

Plug 'nathanaelkane/vim-indent-guides'
Plug 'chriskempson/base16-vim'

" TEJ
Plug 'mtikekar/vim-bsv' " Bluespec System Verilog Plugin

" A Vim Plugin for Lively Previewing LaTeX PDF Output
" :LLPStartPreview <root-filename> 
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'xuyuanp/nerdtree-git-plugin' " Show git status in NerdTree

" Git wrapper
Plug 'tpope/vim-fugitive'

" gnuplot highlighting
Plug 'vim-scripts/gnuplot.vim'

Plug '1995parham/vim-spice'

" Git blame plugin
Plug 'f-person/git-blame.nvim'


call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme OceanicNext
" colorscheme abstract
" colorscheme jellybeans
" colorscheme tender
" colorscheme base16-default-dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree settings
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-indent-guides settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex Preview settings
" let g:livepreview_previewer = 'okular'
let g:livepreview_cursorhold_recompile = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git Blame settings
" By default off
let g:gitblame_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Search options

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces //TEJ changed TAB width from 4 to 3
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Smart way to move between windows
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l

map <C-j> :tabr<cr>
map <C-k> :tabl<cr>
map <C-h> :tabp<cr>
map <C-l> :tabn<cr>

let mapleader = ","
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>tr :tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell Check
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" spell languages
set spelllang=en,cjk

" Show nine spell checking candidates at most
set spellsuggest=best,9

nnoremap <silent> <F9> :set spell!<cr>
inoremap <silent> <F9> <C-O>:set spell!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Champsim file extension for replacement files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup repl_pref_ft
  au!
  autocmd BufNewFile,BufRead *_repl   set syntax=cpp
  autocmd BufNewFile,BufRead *_pref   set syntax=cpp
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gnuplot syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup gnuplot_ft
  au!
  autocmd BufNewFile,BufRead *.gnuplot   set syntax=gnuplot
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spice syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup spice_ft
  au!
  autocmd BufNewFile,BufRead *.cir   set syntax=spice
  autocmd BufNewFile,BufRead *nm     set syntax=spice
augroup END
