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
