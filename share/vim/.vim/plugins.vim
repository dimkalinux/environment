" taglist
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Show_One_File = 1 
let Tlist_WinWidth = 50
let Tlist_Close_On_Select = 1 
let Tlist_GainFocus_On_ToggleOpen = 1
let tlist_php_settings = "php;c:class;f:function"

" command-t
let g:CommandTMatchWindowReverse = 1
let g:CommandTCancelMap = "<esc>"

" pydoc
let g:pydoc_wh = 26
let g:pydoc_highlight = 0

" syntastic
let g:syntastic_auto_loc_list = 1
let g:syntastic_quiet_warnings = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_phpcs_disable = 1
let g:syntastic_enable_signs = 0
let g:syntastic_mode_map = { 
    \ 'mode': 'active',
    \ 'active_filetypes': ['php', 'python'],
    \ 'passive_filetypes': ['javascript', 'html'] 
    \ }

