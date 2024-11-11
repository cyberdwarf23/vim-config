"Set the maximum line lenght to 120 before vim switches to a new line
"automatically.
autocmd BufEnter *.hs setlocal textwidth=120

"Mark the 81th character in a line as color column. So, just the lines with
"more than 80 characters are marked. 
autocmd BufEnter *.hs call matchadd('ColorColumn', '\%81v', 100)
autocmd BufLeave *.hs call clearmatches()

"Autocommand to regenerate the tags when writing a php buffer
autocmd BufWritePost *.hs silent !ctags

"Display tabs, trailing whitespaces and non breaking spaces.
autocmd BufEnter *.hs setlocal listchars=tab:»»,trail:·,nbsp:~"
