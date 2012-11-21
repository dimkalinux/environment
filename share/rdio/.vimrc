let g:CommandTMaxFiles=20000

set tabstop=2
set softtabstop=2
set shiftwidth=2

call add(g:syntastic_mode_map.passive_filetypes, 'python')

let g:syntastic_javascript_jshint_args='--reporter=.jshintreporter rdio/web/client/core/component.js'
