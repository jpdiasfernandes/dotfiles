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



:set relativenumber


