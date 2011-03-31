
"source ~/.foo
"source ~/.bar

if has('win32')
    " dont work on windows
    let g:loaded_lustyjuggler = 1
    let g:loaded_gist_vim = 1
"else
endif

"if executable('zsh-beta')
"    set shell='zsh-beta'
"elseif executable('zsh')
"    set shell='zsh'
"endif

" call pathogen to load the plugins
filetype off
call pathogen#runtime_append_all_bundles()

set nocp nobackup nowritebackup
"set background=dark

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
set tabstop=4 " tab表示4个空格
set shiftwidth=4 " 缩进4个空格
set softtabstop=0 " 删除空格缩进
set expandtab smarttab " 自动将tab展开成空格 行首按tab将自动转换为空格
set backspace=indent,eol,start  " more powerful backspacing
set history=200
set magic ruler
set number
if v:version > 703
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

if v:version > 703
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
        set guifont=Monaco\ 10
    else " linux
        set guifont=DejaVu\ Sans\ Mono\ 9
        set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ 10
        "set guifont=Monospace:h7:w3
        set lines=40
        set columns=130
    endif
else
    colo lucius
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

"let g:vimwiki_list = [{
"                \'path':         '~/.vimwiki/',
"                \ 'path_html':    '~/.vimwiki_html/'
"                \}]

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


if executable('ctags')
endif

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

"FuzzyFinder
nnoremap <leader>ff :FufFile **/<CR>
let g:fuf_coveragefile_exclude = "\v\~$|\.(o|so|exe|dll|bak|orig|sw[po])$|(^|[/\\])\.(hg|git|svn|bzr)($|[/\\])"
let g:fuf_dir_exclude = "\v(^|[/\\])\.(hg|git|svn|bzr)($|[/\\])"

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

" no suppress for not having ruby
let g:LustyExplorerSuppressRubyWarning = 1
let g:LustyJugglerSuppressRubyWarning = 1

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

" delmitMate
"let g:delimitMate_autoclose = 1

" miniBufferExplorer
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplSplitToEdge = 0
" I don't love you any more
let loaded_minibufexplorer = 1

" source ./vim/vimrc
"let g:github_user = ""
"let g:github_token = ""
" open firefox after post
let g:gist_open_browser_after_post = 1


" indent
autocmd FileType html let b:did_indent = 1


""""""""""""""""""""""""""""""""""""""""""""""
"               NeoComplCache                "
""""""""""""""""""""""""""""""""""""""""""""""

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ }
"   \ 'vimshell' : $HOME.'/.vimshell_hist',
"   \ 'scheme' : $HOME.'/.gosh_completions'
"   \ 'php'     : $HOME.'/.vim/dict/php.funclist.txt',

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . (&indentexpr != '' ? "\<C-f>\<CR>X\<BS>":"\<CR>")
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete




