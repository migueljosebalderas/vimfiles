set nu rnu
set sw=2
" set mouse=r
set numberwidth=1
set clipboard=unnamed
set showcmd
set cmdheight=1
set cursorline

set ruler
set encoding=utf-8
set showmatch
set hlsearch
set laststatus=1
set laststatus=2

set autoindent
set omnifunc=syntaxcomplete#Complete
set bs=eol,indent,start
set hidden
set termguicolors

set synmaxcol=180
set lines=45 columns=190
set wildmenu
set guifont=source_code_pro_semibold:h10:W500:cANSI:qDRAFT
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions=i

set undofile
set undodir=C:\Users\migue\.vim\undodir
set nowrap
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

filetype plugin on
filetype indent on 
syntax enable

let g:neotrix_dark_contrast = "retro_hard"

set bg=dark
colorscheme gruvbox
 
let g:gruvbox_contrast_dark="hard"
" Airline configuration
let g:airline_theme="dalton"
let g:airline_section_c="%n | %F%m%r | ascii:%b%  | {kite#statusline()} %{expand(\"%:p:h\")}"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Dark mode settings
highlight LineNr guifg=DarkGray
highlight Search guibg='Purple' guifg=#FFFFFF
highlight String guifg=#FF5733
highlight Visual guibg=#000000
highlight Pmenu guifg=#000000 guibg=#808080



" Para pantalla completa
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F12> <Esc>:call ToggleGUICruft()<cr>

autocmd GUIEnter * silent! WToggleClean
set guitablabel=\[%N\]\ %t\ %M

" Quitar beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" kite
let g:vimdows_screen_memento=0
let g:kite_auto_complete=1


" Para fzf
set rtp+=C:\Users\migue\AppData\Local\Programs\fzf-0.25.1-windows_amd64
let g:fzf_layout = { 'left': '~30%'}

" nmap <F2> :call fzf#run(fzf#wrap({'source': 'dir /B'}))<Enter>
" FZF
" let g:fzf_layout = {'left': '~40%'}
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nmap <F2> :FZF<cr>
nmap <F3> :ls<cr>
nmap <F4> :set lines=80 columns=120<cr>
nmap <c-h> :10winc><cr>
nmap <c-g> :10winc<<cr>
nmap <c-j> :2winc+<cr>
nmap <c-k> :2winc-<cr>

let mapleader=' '

nmap <leader>s :set filetype=sql<cr>

" Acomodar lista de valores para sql char
nmap <leader>g :'<,'>norm I'<esc>xA'<esc>xA,
nmap <leader>t :norm I'\<esc>A'\<esc>A,

" Acomodar lista de valores para sql number

map <C-n> :NERDTreeToggle<CR>

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i


nmap <leader>v :e $MYVIMRC<cr>
