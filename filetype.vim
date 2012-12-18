runtime! ftdetect/*.vim

autocmd BufNewFile,BufRead *.pac setf javascript
autocmd BufNewFile,BufRead nginx.conf set nginx
autocmd BufNewFile,BufRead *.json setf javascript
autocmd BufNewFile,BufRead *.vm setf velocity
autocmd BufNewFile,BufRead *.sc setf scala " Scala IDE (eclipse) worksheet
autocmd BufNewFile,BufRead *.claws-mail/tmp/tmpmsg.* setf mail


autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main

autocmd FileType lisp,c,ruby,eruby,perl,tex,less,sass,scss,coffee,html,xhtml,moon,sh,zsh,csh,tcsh setlocal tabstop=2 shiftwidth=2 softtabstop=2
"autocmd FileType html let b:did_indent = 1

autocmd FileType nginx setlocal commentstring=#\ %s


" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType python IPython
autocmd FileType python set omnifunc=CompleteIPython

