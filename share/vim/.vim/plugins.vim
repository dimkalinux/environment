" taglist
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Show_One_File = 1 
let Tlist_WinWidth = 50
let Tlist_Close_On_Select = 1 
let Tlist_GainFocus_On_ToggleOpen = 1
let tlist_php_settings = "php;i:interface;c:class;v:properties;f:function"

" command-t
let g:CommandTMatchWindowReverse = 1
let g:CommandTCancelMap = "<esc>"

" pydoc
let g:pydoc_wh = 30
let g:pydoc_highlight = 0

" syntastic 
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_warnings = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_phpcs_disable = 1
let g:syntastic_enable_signs = 0
let g:syntastic_mode_map = { 
    \ 'mode': 'active',
    \ 'active_filetypes': ['json', 'php', 'python'],
    \ 'passive_filetypes': ['javascript', 'html', 'css'] 
    \ }
let g:syntastic_python_checker = 'pylint'
let g:syntastic_python_checker_args = '-d C0103 -d C0111 -d W0611 -d W0621 ' .
                                    \ '-d R0201 -d F0401 -d E0611 -d R0903 ' . 
                                    \ '-d C0301 -d W0108 -d W0105 -d W0612 ' . 
                                    \ '-d W0232 -d W0603 -d R0913 -d R0922 ' . 
                                    \ '-d W0106 -d W0623 -d W0142 -d W0212 ' . 
                                    \ '-d W0141 -d E1101 -d C0102 -d R0923 ' . 
                                    \ '-d W0613 -d W0406 -d R0914 -d W0324 ' . 
                                    \ '-d I'

" snipmate
let g:snipMate = {}                                                                          
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php'

" supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" vdebug
let g:vdebug_keymap = {}
let g:vdebug_keymap['set_breakpoint'] = '<Leader>y'
let g:vdebug_keymap['step_over'] = '<Leader>p'
let g:vdebug_keymap['step_in'] = '<Leader>i'
let g:vdebug_keymap['step_out'] = '<Leader>o'
let g:vdebug_keymap['run'] = '<Leader>q'
let g:vdebug_keymap['close'] = '<Leader>w'

let g:vdebug_options = {}
let g:vdebug_options['timeout'] = 8
