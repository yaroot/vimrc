runtime! ftdetect/*.vim

autocmd BufNewFile,BufRead *.pac set ft=javascript
autocmd BufNewFile,BufRead nginx.conf set ft=nginx
autocmd BufNewFile,BufRead *.json set ft=javascript


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

autocmd FileType c,ruby,eruby,perl,tex,less,sass,scss,coffee,html,xhtml,moon setlocal tabstop=2 shiftwidth=2 softtabstop=2
"autocmd FileType html let b:did_indent = 1


