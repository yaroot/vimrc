

" call pathogen to load the plugins
filetype off
call pathogen#runtime_append_all_bundles()

set nocp nobackup nowritebackup

" leader keybind
let mapleader=','

" Encoding stuffs
set nobomb
set encoding=utf-8
set fileformat=unix
set fileformats=unix,dos,mac
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb-18030,gbk,gb2312,cp963,gb18030,big5,euc-jp,euc-kr,latin1

"au BufReadPost,BufNewFile * if !&readonly | setlocal nobomb fileformat=unix fileencoding=utf-8 | endif

set hls
set autoindent cindent smartindent
set tabstop=4       " 4 spaces indentation
set shiftwidth=4    " same
set softtabstop=4   " same
set expandtab smarttab " expand tab with spaces
set backspace=indent,eol,start  " smart backspacing
set history=200
set magic ruler
set number
if v:version>=703
    autocmd BufNewFile,BufRead * set relativenumber
else
    set number
endif
set wrap nolinebreak
set diffopt=filler,vertical " diff模式
set scrolloff=6 " 上下滚动留的最少行数
"set cmdheight=2

filetype plugin indent on
syntax on

" Status Line
set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c:
set statusline=\ \%F\ %m%r%h%w\ \ %y\ [%{&ff}]\ [%{&fileencoding}]\ [tw:%{&tw}]\ [%p%%]\ [%l/%L]\ [%c]

set wc=<tab>
set wildmenu
"set wildmode=list:longest
set wildmode=longest:full

if has('undo-persistent')
    set undofile
    set undodir=~/.vimundo
    set undolevels=1000
endif

set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
set foldnestmax=5
set foldminlines=1
set foldlevel=0

"set ofu=syntaxcomplete#Complete
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

"autocmd FileType html let b:did_indent = 1
autocmd FileType ruby,html,sass,coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 " ruby people use 2 spaces
"autocmd FileType javascript set foldmethod=marker foldlevel=0

set background=dark
"colo solarized
"colo slate
"colo torte
"colo lucius
"colo moria
"colo wombat
if has('gui_running')
    colo tir_black
    set guioptions=
    set lines=55
    set columns=160

    if has('win32')
        set guifont=Monaco:h9:w5
    elseif has('macunix')
        set guifont=Monaco:h14
    else " linux
        set guifont=DejaVu\ Sans\ Mono\ 9
        set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ 10
        "set guifont=Monospace:h7:w3
        set lines=40
        set columns=130
    endif
else
    " set colorscheme for terminal
    "colo ir_black
    " force 256 colors
    "set t_Co=256
endif


"set cuc
"set cul

"set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
hi SpecialKey guibg=NONE ctermbg=NONE
"hi SpecialKey guifg=#3a3a3a ctermfg=237

hi link luaOperator Conditional

"if (v:version>=703)
"    hi ColorColumn ctermbg=234 guibg=#030303
"    "set colorcolumn=4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,80,100
"    set colorcolumn=4,8,12,16,80,100
"    set colorcolumn=80,100
"    let g:IsColorColumnOn = 1
"    function! ToggleColorColumn()
"        if g:IsColorColumnOn == 1
"            set colorcolumn=0
"        else
"            set colorcolumn=4,8,12,16,80,100
"        endif
"        let g:IsColorColumnOn = 1 - g:IsColorColumnOn
"    endfunction
"    command! -n=0 ToggleColorColumn call ToggleColorColumn()
"    map <F6> :ToggleColorColumn<CR>
"endif


"if executable('ctags')
"endif

nnoremap <C-C> :tabnew<CR>
nnoremap <C-N> :tabnext<CR>
nnoremap <C-P> :tabprevious<CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <bs> :noh<CR>
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
nnoremap <leader>ft :set filetype=
nnoremap <leader>hex :%!xxd<CR>
nnoremap <leader>xeh :%!xxd -r<CR>
nnoremap <leader>2 :set t_Co=256<CR>
nnoremap <leader>8 :set t_Co=8<CR>

" ack on the fly
nnoremap <leader>a :Ack  <bs>

" NERDTree toggle
"nnoremap <F11> :NERDTreeToggle<CR>
" taglist
"nnoremap <F12> :TlistToggle<CR>


" DirDiff
"Sets default exclude pattern:
let g:DirDiffExcludes = "CVS,*.git,*.svn,*.class,*.exe,.*.swp"
"Sets default ignore pattern:
let g:DirDiffIgnore = "Id:,Revision:,Date:"
"If DirDiffSort is set to 1, sorts the diff lines.
let g:DirDiffSort = 1
"Sets the diff window (bottom window) height (rows)
let g:DirDiffWindowSize = 10
"Ignore case during diff
let g:DirDiffIgnoreCase = 0

" superTab setting
let g:SuperTabDefaultCompletionType = 'context'

" snipMate
"autocmd VimEnter ino <c-k> <c-r>=TriggerSnippet()<cr>
"autocmd VimEnter snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

" indent guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#202520
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#202020

