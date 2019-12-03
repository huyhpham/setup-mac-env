packadd! onedark

set guifont=Operator\ Mono\ 15
set laststatus=2
set noshowmode

set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set number
set listchars=tab:!·,trail:·
set list

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic gui=italic
highlight Identifier cterm=italic gui=italic
highlight htmlArg cterm=italic gui=italic

let g:javascript_plugin_flow                  = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_undefined            = "¿"
set conceallevel=1

let g:onedark_hide_endofbuffer=0
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:lightline = {
  \   'colorscheme': 'onedark',
  \}

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

map <silent> <C-n> :NERDTreeToggle<CR>

syntax on
colorscheme onedark