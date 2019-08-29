if exists("b:did_ftplugin_php_lint") || !executable("php")
  finish
endif

command! -buffer Phplint call s:Phplint()

function! s:Phplint() abort
  let filename = fnamemodify(expand("%"), ":~:.")
  let output = system('php -l ' . shellescape(filename))

  if v:shell_error
    let lines = split(output, "\n")
    cexpr lines[:-2]
    copen
  else
    cclose
    echomsg "No syntax errors"
  endif
endfunction

set errorformat=%m\ in\ %f\ on\ line\ %l

let b:did_ftplugin_php_lint = 1
