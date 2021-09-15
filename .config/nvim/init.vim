call plug#begin('~/plugged')

Plug 'neoclide/coc.nvim', {'branch' : 'release'}

Plug 'preservim/nerdtree'

" Autoclose
Plug 'cohama/lexima.vim'

" Colorscheme
Plug 'morhetz/gruvbox'

" Tagbar for functions prototypes and more
Plug 'majutsushi/tagbar'

" Airline plugins
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

" Clang formatting
Plug 'rhysd/vim-clang-format'

" Calendar
Plug 'itchyny/calendar.vim'

"R
Plug 'jalvesaq/Nvim-R'

"Fugitive (git plugin)
Plug 'tpope/vim-fugitive'

Plug 'glacambre/firenvim', {'do': {_ -> firenvim#install(0)}}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


autocmd FileType json syntax match Comment +\/\/.\+$+

set termguicolors
set background=light

let g:gruvbox_italic=1

" Colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

" Airline theme
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1

" Calendar setup
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

:set nu rnu
" Sets color collumn
:set colorcolumn=80


