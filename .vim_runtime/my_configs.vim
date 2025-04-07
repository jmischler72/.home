let g:ale_fix_on_save = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

syntax on
filetype plugin indent on

" Set indentation for YAML & JSON
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

" Enable Helm syntax highlighting
let g:helm_include_guard = 1

" Enable line numbers
set number

" Set dark background
set background=dark
colorscheme desert

" Keybindings
nnoremap <C-n> :NERDTreeToggle<CR>   " Toggle NERDTree
nnoremap <C-p> :FZF<CR>               " Fuzzy find files
nnoremap <leader>g :GitGutterToggle<CR>  " Toggle Git diff

" YAML Linting
let g:syntastic_yaml_checkers = ['yamllint']
