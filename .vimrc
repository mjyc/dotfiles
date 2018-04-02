" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype indent plugin on


" Color Theme
" colorscheme darkburn
" http://sunaku.github.io/vim-256color-bce.html
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


" OSX
if has ('macunix')
  set mouse=a " Enable mouse
endif


" Packages
" ctrlp
let g:ctrlp_custom_ignore='node_modules'
let g:ctrlp_dotfiles=0
" vim-multiple-cursors
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
" vim-tmux-navigator
" Update c-h/j/k/l\ in
" ~/.vim/bundle/vim-tmux-navigator/plugin/tmux_navigator.vim to <ESC>h/j/k/l/\
" vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='base16_ashes'


" Local Dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo


" Stuff
set autochdir
set autoindent " Always set autoindenting on
set backspace=indent,eol,start " Allow backspacing over everything in insert mode
set clipboard=unnamed " Using mouse 3rd button click
set copyindent " Copy the previous indentation on autoindenting
set cursorline " Highlight current line
" set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set foldlevel=99
set foldmethod=indent
set hidden " Hides buffers instead of closing them
set hlsearch " Highlight search terms
set ignorecase " Ignore case when searching
set incsearch " Show search matches as you type
set ls=2 " Allways show status line
set modeline " Display filename
set nowrap " Don't wrap lines
set number " Dusplay line number
" set paste! " Start with paste mode
set ruler " Show the cursor position
set shiftround " Use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4 " Number of spaces to use for autoindenting
set showmatch " Set show matching parenthesis
set showmode " Show the current mode.
set smartcase " Ignore case if search pattern is all lowercase, case-sensitive otherwise
" set smarttab " Insert tabs on the start of a line according to shiftwidth, not tabstop
set tabstop=4 " A tab is four spaces
set title " Show the filename in the window titlebar.
set ttymouse=xterm " Set mouse type to xterm.
set undofile " Persistent Undo.
" set whichwrap+=<,>,h,l,[,] " Automatically wrap left and right
set wildmode=longest,list,full " Tab completion
if has('unnamedplus')
  set clipboard+=unnamedplus " make default copy and paste to use clipboard
endif



"" KEY BINDINGS

" Typo Proof
nnoremap ; :
nnoremap <C-@> :set paste!<CR>
" nnoremap <C-@> :set nopaste<CR> " <C-@> == <C-Space>
command W w
command Wq wq

" Sudo Write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Split
map <Tab> <C-w>w
map - 3<C-W>-
map = 3<C-W>+
map 8 3<C-W><
map 9 3<C-W>>
map <leader>o :sp<cr>
map <leader>e :vsp<cr>

" Search
nmap <silent> kl :nohlsearch<CR>

" Tab
" nnoremap <leader>n :tabprevious<CR>
" nnoremap <leader>p :tabnext<CR>
" map <S-h> :tabprevious<CR>
" map <S-l> :tabnext<CR>
" nnoremap <leader>t :tabnew<CR>
" nnoremap <leader>d :tabclose<CR>

" Buffer
map <S-k> :bp<CR>
map <S-j> :bn<CR>

" Movements
map <C-l> $
map <C-h> ^
map <C-j> 10j
map <C-k> 10k

" Control
imap kj <Esc>
map <C-c> <Esc>
inoremap <silent> <Esc> <Esc>`^
set timeoutlen=100 ttimeoutlen=1

" Windows
map <Esc>j <C-W>j
map <Esc>k <C-W>k
map <Esc>h <C-W>h
map <Esc>l <C-W>l

" General Dev
" indent/unident block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>
" strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
" toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
" mark jumping (line + col)
nnoremap ' `
" open NERDtree
map <leader>n :NERDTreeToggle<CR>

" Highlight
" toggle `set list`
nmap <leader>l :set list!<CR>:set number!<CR>
set list!
" use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Linebreak
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
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
:silent call ToggleWrap()

" Detect file changes
autocmd FileChangedShell * echo "Warning: File changed on disk"

" FileTypes
" Only do this part when compiled with support for autocommands
if has('autocmd')
  " Enable file type detection
  filetype on
  autocmd FileType cmake setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cmake set commentstring=#\ %s
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
endif
" Markdown
au BufRead,BufNewFile *.md set filetype=text
" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript
