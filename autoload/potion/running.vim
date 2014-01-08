echom "AutoLoading"

function! potion#running#PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command ." " bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
    " Get the bytecode
    "let bytecode = system(g:potion_command." -c -V ".bufname("%")." 2>&1" )
    let bytecode = system(g:potion_command." -c ".bufname("%")." 2>&1" )

    " Open a new split and set it up.
    split __Potion_Bytecode__ 
    normal! ggdG
    setlocal filetype=potionbytecode
    setlocal buftype=nofile

    " Inset the bytecode.
    call append(0,split(bytecode,'\v\n'))

endfunction

echom "Done AutoLoading!"
