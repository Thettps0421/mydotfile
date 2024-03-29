" Vim Config - Minimal
" --------------------

" Set compatibility to Vim only
set nocompatible              
filetype on                  
"+++++++++++++Settings++++++++++++++
filetype plugin on
filetype plugin indent on 
let g:airline_powerline_fonts = 1

"jumps to the last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set backspace=indent,eol,start
set encoding=utf-8
set tabstop=4
set softtabstop=4
set expandtab
set number
set mouse=a
set clipboard=unnamedplus
highlight LineNr ctermfg=cyan
hi StatusLine ctermfg=NONE ctermbg=red cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
hi User1 ctermfg=black ctermbg=magenta
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=black ctermbg=blue
hi User4 ctermfg=black ctermbg=cyan
set statusline=\                    " Padding
set statusline+=%f                  " Path to the file
set statusline+=\ %1*\              " Padding & switch colour
set statusline+=%y                  " File type
set statusline+=\ %2*\              " Padding & switch colour
set statusline+=%=                  " Switch to right-side 
set statusline+=\ %3*\              " Padding & switch colour
set statusline+=line                " of Text
set statusline+=\                   " Padding
set statusline+=%l                  " Current line
set statusline+=\ %4*\              " Padding & switch colour
set statusline+=of                  " of Text
set statusline+=\                   " Padding
set statusline+=%L                  " Total line
set statusline+=\ 

set spell
set t_ut=
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
"###############Color Theme:##############
syntax on
let g:gruvbox_contrast_dark="hard"
set background=dark

" Always show current position
set ruler
"Turn on syntax highlighting.
syntax on
" Turn off modelines
set modelines=0

" Display options
set showmode
set cmdheight=1

"Visual wrapping:
autocmd FileType python set breakindentopt=shift:4

"Cut/Copy/Paste:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap x "_x
let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-l> :TlistToggle<CR>

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

if !has('gui_running')
	set t_Co=256
endif

"#########Enable-Plugins:#############
"Latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" previous-history instead of down and up. If you don't like the change,
let g:fzf_history_dir = '~/.local/share/fzf-history'


let g:user_emmet_mode='a'

let g:gitgutter_max_signs = 500

"let g:indent_guides_enable_on_vim_startup = 1
