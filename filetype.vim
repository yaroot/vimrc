runtime! ftdetect/*.vim
" see mustache.github.com
au BufNewFile,BufRead *.mustache setf mustache
au BufNewFile,BufRead *.pac setf javascript
au BufNewFile,BufRead *.json setf json
" moin wiki
au BufNewFile,BufRead *.moin setf moin
" cakephp
au BufNewFile,BufRead *.thtml setf xml
" lighttpd
au BufNewFile,BufRead lighttpd.conf setf lighttpd
" nginx
au BufNewFile,BufRead nginx.conf setf nginx


