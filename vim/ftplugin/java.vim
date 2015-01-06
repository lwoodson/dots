set shiftwidth=4
set softtabstop=4


command! -nargs=0 RebuildMavenProject
\ | execute ":silent !mvn eclipse:clean eclipse:eclipse"
\ | execute ":redraw!"
\ | execute ":ProjectBuild"

nmap <Leader>i :JavaImportOrganize<CR>
nmap <Leader>b :RebuildMavenProject<CR>
nmap <Leader>c :JavaConstructor<CR>
vmap <Leader>c :JavaConstructor<CR>
vmap <Leader>a :JavaGetSet<CR>
vmap <Leader>g :JavaGet<CR>
vmap <Leader>s :JavaSet<CR>
nmap <Leader>o :JavaOverride<CR>
nmap <Leader>f :JavaFormat<CR>

autocmd BufWritePost * call system('pwd')
