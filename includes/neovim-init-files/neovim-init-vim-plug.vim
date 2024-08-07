""""[ vim-plug Configurations ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin(stdpath('data') . '/plugged')
" Make sure you use single quotes

" Vim help for vim-plug itself
Plug 'junegunn/vim-plug'

" Rainbow delimiters for Neovim with Tree-sitter.
Plug 'HiPhish/rainbow-delimiters.nvim'
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" A collection of themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'
" Retro groove color scheme for Vim.
Plug 'sainnhe/gruvbox-material'
" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP)
" support.
Plug 'dense-analysis/ale'
" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'
" An incremental parsing system for programming tools.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Highlight columns in CSV and TSV files and run queries in SQL-like language.
Plug 'mechatroner/rainbow_csv'

" Initialize plugin system
call plug#end()
"
" Brief help:
"   PlugInstall  - Install plugins
"   PlugUpdate   - Install or update plugins
"   PlugClean    - Remove unlisted plugins (bang version will clean without prompt)
"   PlugUpgrade  - Upgrade vim-plug itself
"   PlugStatus   - Check the status of plugins
"   PlugDiff     - Examine changes from the previous update and the pending changes
"   PlugSnapshot - Generate script for restoring the current snapshot of the plugins


""""[ Non-vim-plug Related Configurations ]"""""""""""""""""""""""""""""""""""""""""""""


"" Overwrites specified default setting.
set tabstop=4       " Tells vim how many columns a tab counts for.
set shiftwidth=4    " 'Levels of indentation', where a level of indentation is
                    " shiftwidth columns of whitespace.
set expandtab       " Ensure that when you hit tab it will actually use spaces.
set colorcolumn=88  " Set a colored line at column 88 in every row.

"" Markdown files
autocmd Filetype markdown setlocal colorcolumn=0
"" TXT files
autocmd Filetype text setlocal colorcolumn=0
"" Java
autocmd Filetype java setlocal colorcolumn=94
"" C#
autocmd Filetype cs setlocal colorcolumn=120
"" HTML
autocmd Filetype html setlocal colorcolumn=100 tabstop=2 shiftwidth=2 nowrap
"" CSS
autocmd Filetype css setlocal colorcolumn=100 tabstop=2 shiftwidth=2 nowrap
"" Vue
autocmd Filetype vue setlocal colorcolumn=100 tabstop=2 shiftwidth=2


""""[ vim-plug Plugin Configurations ]""""""""""""""""""""""""""""""""""""""""""""""""""


" Font: Power Line Font
set guifont=MesloLGS_NF:h12

"" Plugin: gruvbox-material
colorscheme gruvbox-material
set background=dark
let g:gruvbox_material_foreground = 'original'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1

"" Plugin: vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

"" Plugin: better-whitespace
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

"" Plugin: ale
"let g:ale_use_neovim_diagnostics_api = 0


""""[ Useful Commands ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" :NERDTree        - Opens NERDTree file system explorer.
" :StripWhitespace - Clean extra whitespace.
" :ALEInfo         - Show ALE information.
" :ALEToggle       - Toggle ALE on/off.
" :TSInstall       - Install treesitter parsers.
" :TSUpdate        - Update treesitter parsers.
" :TSInstallInfo   - Show treesitter information.
