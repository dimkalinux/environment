" poor man's JSON
autocmd BufNewFile,BufRead *.json set ft=javascript

" php and html soup
autocmd BufNewFile,BufRead *.phtml set ft=phtml
autocmd FileType php let g:viewdoc_man_cmd = "pman"
