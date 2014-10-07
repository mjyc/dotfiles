" Pathogen setups
filetype off
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype indent plugin on

" Mac
if has ("gui_macvim")
  set macmeta
endif

" Syntastic setups
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" Multiple-cursors setup
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo


" Setups
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


"" KEY BINDING
" efficient command
nnoremap ; :
nnoremap <C-@> :set paste!<CR>
" nnoremap <C-@> :set nopaste<CR> " <C-@> == <C-Space>

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
command W w
command Wq wq

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Split
map <Tab> <C-w>w
map - <C-W>-
map + <C-W>+
map 8 <C-W><
map 9 <C-W>>
map <leader>o :sp<cr>
map <leader>e :vsp<cr>

" Search
" nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> kl :nohlsearch<CR>

" Tab
" nnoremap ,n :tabprevious<CR>
" nnoremap ,p :tabnext<CR>
map <S-h> :tabprevious<CR>
map <S-l> :tabnext<CR>
" nnoremap ,t :tabnew<CR>
" nnoremap ,d :tabclose<CR>

" buffer
map <S-j> :bp<CR>
map <S-k> :bn<CR>

" movements
map <C-l> $
map <C-h> ^
map <C-j> 10j
map <C-k> 10k

" control
" imap jj <Esc>
imap kj <Esc>
" vnoremap <C-c> <Esc>
" imap <C-c> <Esc>
map <C-c> <Esc>
inoremap <silent> <Esc> <Esc>`^
set timeoutlen=100 ttimeoutlen=1

" Windows
map <Esc>j <C-W>j
map <Esc>k <C-W>k
map <Esc>h <C-W>h
map <Esc>l <C-W>l

" Copy and paste
" "*p/y, <C-r>*  paste from mouse buttom
" "+p/y, <C-r>+  paste from clipboard
" I don't use P and Y at all.
"vmap y "+y
"vmap p "+p
"
" Indent/unident block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>


" NERDTree setup
" map <F2> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>


" Highlight setup
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>:set number!<CR>
set list!
" Use the same symbols as TextMate for tabstops and EOLs
           set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" Detect file changes
autocmd FileChangedShell * echo "Warning: File changed on disk"

" FileType setup
" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  "autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType cmake setlocal ts=4 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  "autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType python setlocal ts=8 sts=4 sw=4 expandtab
  "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " ROS Configuration
  autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

  " commentary setup
  autocmd FileType cmake set commentstring=#\ %s
endif
au BufRead,BufNewFile *.md set filetype=text


" LINEBREAK SETUPS
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    unmap k
    unmap j
    unmap 0
    unmap ^
    unmap $
  else
    echo "Wrap ON"
    setlocal wrap
    map <silent> k gk
    map <silent> j gj
    map <silent> 0 g0
    map <silent> ^ g^
    map <silent> $ g$
  endif
endfunction
:silent call ToggleWrap()

