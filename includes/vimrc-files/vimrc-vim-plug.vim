""""[ vim-plug Configurations ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Vim help for vim-plug itself
Plug 'junegunn/vim-plug'

" Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful
" configuration.
Plug 'luochen1990/rainbow'
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" A collection of themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'
" Retro groove color scheme for Vim.
Plug 'morhetz/gruvbox'
" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'
" A tree explorer plugin for vim.
Plug 'preservim/nerdtree'
" Adds file type icons to Vim plugins.
Plug 'ryanoasis/vim-devicons'
" A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'
" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP)
" support.
Plug 'dense-analysis/ale'
" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'
" IMPORTANT: Install the neccessary prerequisites before uncommenting the below plugin.
" A code-completion engine for Vim.
"   Prerequisites for macOS: https://github.com/ycm-core/YouCompleteMe#macos
"   Prerequisites for Linux: https://github.com/ycm-core/YouCompleteMe#linux-64-bit
"Plug 'valloric/youcompleteme'

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


" Sets the default vim settings.
source $VIMRUNTIME/defaults.vim

"" Overwrites specified default setting.
set tabstop=4       " Tells vim how many columns a tab counts for.
set shiftwidth=4    " 'Levels of indentation', where a level of indentation is
                    " shiftwidth columns of whitespace.
set expandtab       " Ensure that when you hit tab it will actually use spaces.
set mouse-=a        " Exchanges the ability to move the cursor with your mouse, with the
                    " ability to highlight and copy text.
set colorcolumn=88  " Set a colored line at column 89 in every row.

"" Markdown files
autocmd Filetype markdown setlocal colorcolumn=0
"" TXT files
autocmd Filetype text setlocal colorcolumn=0
"" Java
autocmd Filetype java setlocal colorcolumn=94
"" C#
autocmd Filetype cs setlocal colorcolumn=94
"" HTML
autocmd Filetype html setlocal colorcolumn=100 tabstop=2 shiftwidth=2 nowrap
"" CSS
autocmd Filetype css setlocal colorcolumn=100 tabstop=2 shiftwidth=2 nowrap
"" Vue
autocmd Filetype vue setlocal colorcolumn=100 tabstop=2 shiftwidth=2


""""[ vim-plug Plugin Configurations ]""""""""""""""""""""""""""""""""""""""""""""""""""


" Font: Power Line Font
set guifont=MesloLGS_NF:h12
" Plugin: vim-devicons
set encoding=UTF-8
"" Plugin: gruvbox
colorscheme gruvbox
set bg=dark

" Plugin: rainbow
let g:rainbow_active = 1
"" Plugin: vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
"" Plugin: better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


""""[ Useful Commands ]"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" :NERDTree       - Opens NERDTree file system explorer.
" :StripWhitespace - Clean extra whitespace.

