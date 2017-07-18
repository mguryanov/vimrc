" custom colorscheme
syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'


augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END


nmap <F8> :TagbarToggle
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>
imap <F5> <Esc> :tabprev <CR>i
map <F5> :tabprev <CR>

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>s <Plug>(go-implements)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)


let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=1
let g:netrw_winsize=15

let g:neocomplete#enable_at_startup=1
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_fields=1
let g:go_highlight_types=1
let g:go_highlight_operators=1
let g:go_highlight_build_constraints=1

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'majutsushi/tagbar', {}
Plug 'Shougo/neocomplete', {}
Plug 'garyburd/go-explorer', {}
Plug 'vim-airline/vim-airline', {}
Plug 'vim-airline/vim-airline-themes', {}
Plug 'https://github.com/altercation/vim-colors-solarized.git', {}
call plug#end()

set modeline
set modelines=2
set number " показывать номера строк в редакторе
set colorcolumn=80 " вертикальная линия после 80 символов
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
set laststatus=2   " всегда показывать строку статуса
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%
