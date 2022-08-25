" Sets the default vim settings.
source $VIMRUNTIME/defaults.vim

"" Overwrites specified default setting.
set tabstop=4       " Tells vim how many columns a tab counts for.
set shiftwidth=4    " 'Levels of indentation', where a level of indentation is
                    " shiftwidth columns of whitespace.
set expandtab       " Ensure that when you hit tab it will actually use spaces.
set mouse-=a        " Exchanges the ability to move the cursor with your mouse, with the
                    " ability to highlight and copy text.
set colorcolumn=89  " Set a colored line at column 89 in every row.

"" Markdown files
autocmd Filetype markdown setlocal colorcolumn=0 nowrap
"" TXT files
autocmd Filetype text setlocal colorcolumn=0