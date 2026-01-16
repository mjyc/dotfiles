" =========================
"  GENERAL / BOOTSTRAP
" =========================

" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype indent plugin on


" =========================
"  PLUGINS / PACKAGE SETTINGS
" =========================

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_dotfiles = 0

" nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_ashes'
let g:airline_symbols_ascii = 1
let g:airline_powerline_fonts = 0

" vim-multiple-cursors
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <Esc>h :TmuxNavigateLeft<CR>
nnoremap <silent> <Esc>j :TmuxNavigateDown<CR>
nnoremap <silent> <Esc>k :TmuxNavigateUp<CR>
nnoremap <silent> <Esc>l :TmuxNavigateRight<CR>
nnoremap <silent> <Esc>\ :TmuxNavigatePrevious<CR>


" =========================
"  LOCAL DIRECTORIES
" =========================

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
set undofile


" =========================
"  EDITING / UI / BEHAVIOR
" =========================

set autochdir                  " Auto-change cwd to current file
set autoindent                 " Keep indentation from previous line
set backspace=indent,eol,start " Allow backspace over everything in insert mode
set copyindent                 " Copy indentation from previous line
set cursorline                 " Highlight current line
set foldlevel=99               " Open all folds by default
set foldmethod=indent          " Fold based on indentation
set formatoptions-=cro         " Disable auto comment insertion on Enter/o/O
set hidden                     " Allow buffer switching without saving
set hlsearch                   " Highlight search matches
set ignorecase                 " Case-insensitive search by default
set incsearch                  " Show matches while typing search
set laststatus=2               " Always show status line
set modeline                   " Enable modelines in files
set mouse=a                    " Enable mouse support in all modes
set nowrap                     " Do not wrap long lines
set number                     " Show line numbers
set ruler                      " Show cursor position
set shiftround                 " Round indent to multiple of shiftwidth
set shiftwidth=4               " Indent size
set showmatch                  " Briefly jump to matching bracket
set smartcase                  " Case-sensitive if search has uppercase
set tabstop=4                  " Tab width
set title                      " Show filename in terminal title
set ttymouse=sgr               " Mouse support in terminal Vim
set wildmode=longest,list,full " Command-line completion behavior

" Clipboard
if has('unnamedplus')
  set clipboard+=unnamedplus
else
  set clipboard=unnamed
endif

" Visible whitespace (TextMate-like)
set listchars=tab:▸\ ,eol:¬
highlight NonText    guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" =========================
"  KEY BINDINGS
" =========================

" Typo proofers / convenience
nnoremap ; :
nnoremap <C-@> :set paste!<CR>
command! W  w
command! Wq wq

" Sudo write (,W)
nnoremap <leader>W :w !sudo tee %<CR>

" Scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Splits / windows
map <Tab> <C-w>w
map - 3<C-W>-
map = 3<C-W>+
map 8 3<C-W><
map 9 3<C-W>>
map <leader>o :sp<CR>
map <leader>e :vsp<CR>

" Search
nmap <silent> kl :nohlsearch<CR>

" Buffers
map <S-k> :bp<CR>
map <S-j> :bn<CR>

" Movements
map <C-l> $
map <C-h> ^
map <C-j> 10j
map <C-k> 10k

" Insert / escape behavior
imap kj <Esc>
map <C-c> <Esc>
inoremap <silent> <Esc> <Esc>`^

set timeoutlen=100    " Time (ms) to wait for mapped key sequences
set ttimeoutlen=1     " Time (ms) to wait for terminal key codes (Esc responsiveness)

" Toggle line numbers
nnoremap <leader>l :set number!<CR>

" indent/unindent block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>

" mark jumping (line + col)
nnoremap ' `


" =========================
"  FUNCTIONS
" =========================

function! ToggleWrap()
  if &wrap
    echo 'Wrap OFF'
    setlocal nowrap
    unmap k
    unmap j
    unmap 0
    unmap ^
    unmap $
  else
    echo 'Wrap ON'
    setlocal wrap
    map <silent> k gk
    map <silent> j gj
    map <silent> 0 g0
    map <silent> ^ g^
    map <silent> $ g$
  endif
endfunction
nnoremap <silent> <Leader>w :call ToggleWrap()<CR>

" Start with wrap toggled on/off
silent! call ToggleWrap()

function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
nnoremap <leader>ss :call StripWhitespace()<CR>


" =========================
"  AUTOCMDS / FILE SETTINGS
" =========================

" Detect file changes
autocmd FileChangedShell * echo "Warning: File changed on disk"

if has('autocmd')
  filetype on
  autocmd FileType cmake       setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cmake       setlocal commentstring=#\ %s
  autocmd FileType html        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType json        setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python      setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
endif

" Ignore syntax highlighting for Markdown
autocmd BufRead,BufNewFile *.md set filetype=text
