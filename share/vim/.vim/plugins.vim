" tagbar
let g:tagbar_left = 1
let g:tagbar_width = 50
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_show_visibility = 1

" command-t
let g:CommandTMatchWindowReverse = 1
let g:CommandTCancelMap = "<esc>"

" pydoc
let g:pydoc_wh = 30
let g:pydoc_highlight = 0

" syntastic 
let g:syntastic_csslint_options = '--errors=errors'
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_warnings = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_phpcs_disable = 1
let g:syntastic_enable_signs = 0
let g:syntastic_mode_map = { 
    \ 'mode': 'active',
    \ 'active_filetypes': ['json', 'javascript', 'php', 'python', 'css'],
    \ 'passive_filetypes': ['html'] 
    \ }

" snipmate
let g:snipMate = {}                                                                          
let g:snipMate.scope_aliases = {
  \ 'php': 'php',
  \ 'phtml': 'php'
  \ }

" supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" vdebug
let g:vdebug_keymap = {}
let g:vdebug_keymap['set_breakpoint'] = '<Leader>y'
let g:vdebug_keymap['step_over'] = '<Leader>p'
let g:vdebug_keymap['step_into'] = '<Leader>i'
let g:vdebug_keymap['step_out'] = '<Leader>o'
let g:vdebug_keymap['run'] = '<Leader>q'
let g:vdebug_keymap['close'] = '<Leader>w'

let g:vdebug_options = {}
let g:vdebug_options['timeout'] = 30
let g:vdebug_options['ide_key'] = 'artem'

" zencoding
let g:user_zen_expandabbr_key = '<c-h>'
let g:user_zen_settings = {
\  'scss': {'filters' : 'fc'},
\  'less': {'filters': 'fc'}
\}
