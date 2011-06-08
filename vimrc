

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
if v:version >= 703
    set relativenumber
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

if v:version >= 703
    set undofile
    set undodir=~/.vimundo
    set undolevels=5000
endif

set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
set foldnestmax=5
set foldminlines=1
set foldlevel=0
"autocmd FileType javascript set foldmethod=marker foldlevel=0

"set ofu=syntaxcomplete#Complete
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"


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
    colo ir_black
    " set to 256 color for screen/tmux
    "set t_Co=256
endif


"set cuc
"set cul

" 以 >--- 显示制表符, `显示多余空格
"set listchars=tab:\ \ ,trail:`
set listchars=tab:\ \ ,trail:¤
set list
hi SpecialKey guibg=NONE ctermbg=NONE
"set listchars=tab:>-,trail:`
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

nnoremap <C-S-C> :tabclose<CR>
nnoremap <C-S-N> :tabnew<CR>
nnoremap <C-TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprevious<CR>
nnoremap <C-S-TAB> :tabprevious<CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <bs> :noh<CR>
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
nnoremap <leader>ft :set filetype=
nnoremap <leader>lua :set filetype=lua<CR>
nnoremap <leader>js :set filetype=javascript<CR>
nnoremap <leader>rb :set filetype=ruby<CR>
nnoremap <leader>py :set filetype=py<CR>
nnoremap <leader>php :set filetype=php<CR>
nnoremap <leader>hex :%!xxd<CR>
nnoremap <leader>xeh :%!xxd -r<CR>
nnoremap <leader>2 :set t_Co=256<CR>
nnoremap <leader>8 :set t_Co=8<CR>

" ack on the fly
nnoremap <leader>a :Ack  <bs>

" NERDTree toggle
nnoremap <F11> :NERDTreeToggle<CR>
" taglist
nnoremap <F12> :TlistToggle<CR>


"indent color
"hi 4spa guibg = #771144
"hi 8spa guibg = #22464A
"hi 12spa guibg = #344333
"hi 16spa guibg = #777444
"hi 20spa guibg = #555777
"hi 24spa guibg = #cc9966
"hi 80spa guibg = #ff1111
""style 1
"syn match 4spa /\(\s\{4}\|\n\)\&\%1v.*\%2v/
"syn match 8spa /\s\{4}\&\%5v.*\%6v/
"syn match 12spa /\s\{4}\&\%9v.*\%10v/
"syn match 16spa /\s\{4}\&\%13v.*\%14v/
"syn match 20spa /\s\{4}\&\%17v.*\%18v/
"syn match 24spa /\s\{4}\&\%21v.*\%22v/
"style 2
"syn match 4spa /\(\s\|\n\)\&\%4v.*\%5v/
"syn match 8spa /\s\&\%8v.*\%9v/
"syn match 12spa /\s\&\%12v.*\%13v/
"syn match 16spa /\s\&\%16v.*\%17v/
"syn match 20spa /\s\&\%20v.*\%21v/
"syn match 24spa /\s\&\%24v.*\%25v/
"syn match 80spa /.\&\%80v.*\%81v/

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

let g:SuperTabDefaultCompletionType = 'context'

autocmd FileType html let b:did_indent = 1
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 " ruby people use 2 spaces

