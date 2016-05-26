""vimrc.
""markdown
au BufNewFile,BufRead *.md let g:vim_markdown_conceal = 0 "不要隐藏markdown文本 
au BufNewFile,BufRead *.md let g:vim_markdown_folding_disabled = 1 "不要折叠markdown文本 

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \ 'vim' : 1,
      \ 'help' : 1,
      \}

au BufNewFile,BufRead,Filetype *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set filetype=python |
    \ set textwidth=79 |
    \ set expandtab |
    \ set smartindent |
    \ set autoindent |
    \ set fileformat=unix |
    \ set omnifunc=jedi#completions |
    \ ab .py- #!/usr/bin/python2.7 |

au BufNewFile,BufRead,Filetype *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent |
    \ set smartindent |


"" HTML/CSS
let g:user_emmet_install_global = 0
au BufNewFile,BufRead,Filetype html,css EmmetInstall
au BufNewFile,BufRead,Filetype *.html set omnifunc=htmlcomplete#CompleteTags
au BufNewFile,BufRead,Filetype *.css set omnifunc=cssmplete#CompleteCSS

if exists('$TMUX')
  set term=screen-256color
endif
set t_Co=256
set ruler
set incsearch
set hlsearch
set nocompatible
set wildmenu
set autowrite
set ignorecase  "忽略大小写"
set numberwidth=2
set nu
set wrap
set encoding=utf-8
syntax enable
syntax on
filetype plugin indent on
let g:mapleader = ","
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-h> <left>
inoremap <C-l> <right>

""pathogen
call pathogen#infect()
call pathogen#helptags()


"YouCompleteMe
set completeopt-=preview
let g:ycm_key_invoke_completion = '<leader><TAB>'
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_use_ultisnips_completer = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1 
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7' 
let g:ycm_python_binary_path = '/usr/bin/python2.7'
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:syntastic_always_populate_loc_list = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
let g:ycm_open_loclist_on_ycm_diags = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_filepath_completion_use_working_dir = 1



""indentLine 缩进线颜色
let g:indentLine_color_term = 9

" Highlight current line
set cursorline cursorcolumn
hi cursorline cterm=NONE ctermbg=239
hi cursorColumn cterm=NONE ctermbg=239
hi TabLine ctermfg=0 ctermbg=11
hi TabLineSel ctermfg=15 ctermbg=1

"Solarized"
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"airline
"let g:airline_theme= 'powerlineish'
set laststatus=2
set ttimeoutlen=50
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:CtrlSpaceStatuslineFunction = "airline#extensions#ctrlspace#statusline()"
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
map <C-k> :w<cr>:bn<cr>               "下一个文件
map <C-j> :w<cr>:bp<cr>               "上一个文件

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
    "project_base_dir = os.environ['VIRTUAL_ENV']
    "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    "execfile(activate_this, dict(__file__=activate_this))
"EOF

"python-mode
let g:pymode_python = 'python'
let g:pymode_options_max_line_length = 85
let g:pymode_run_bind = '<leader>p'
let g:pymode_lint_cwindow = 0 "关闭python-mode附加窗口 
let g:pymode_doc = 0
let g:pymode_paths = ['./',]
map <leader>q :bwipeout __run__<cr> "由于python-mode会自动打开一个__run__缓冲区作为运行，所以设置快捷键来关闭 

"jedi
let g:jedi#show_call_signatures_delay = 0
let g:jedi#smart_auto_mappings = 1
