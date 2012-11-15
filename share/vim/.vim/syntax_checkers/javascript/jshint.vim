"============================================================================
"File:        jshint.vim
"Description: Javascript syntax checker - using jshint
"Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"============================================================================
if !exists("g:syntastic_javascript_jshint_conf")
    let g:syntastic_javascript_jshint_conf = ""
endif

if !exists("g:syntastic_javascript_jshint_args")
    let g:syntastic_javascript_jshint_args = ""
endif

function! SyntaxCheckers_javascript_GetLocList()
    " node-jshint uses .jshintrc as config unless --config arg is present
    let conf = !empty(g:syntastic_javascript_jshint_conf) ? ' --config ' . g:syntastic_javascript_jshint_conf : ''
    let args = !empty(g:syntastic_javascript_jshint_args) ? ' ' . g:syntastic_javascript_jshint_args : '' 
    let makeprg = 'jshint' . conf . args . ' ' . shellescape(expand("%"))
    let errorformat = '%ELine %l:%c,%Z\\s%#Reason: %m,%C%.%#,%f: line %l\, col %c\, %m,%-G%.%#'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat, 'defaults': {'bufnr': bufnr('')} })
endfunction
