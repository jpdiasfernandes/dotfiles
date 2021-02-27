call plug#begin('~/plugged')

Plug 'neoclide/coc.nvim', {'branch' : 'release'}

Plug 'preservim/nerdtree'

Plug 'rstacruz/vim-closer'

Plug 'Raimondi/delimitMate'


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


:set number


