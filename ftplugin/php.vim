function! RunPhplint()
  let l:phplint_exe=get(g:, 'phplint_exe', '')
  let l:filename=shellescape(expand('%:p'))
  let l:phplint_output=system(l:phplint_exe .' php -l ' . l:filename)
  let l:phplint_list=split(l:phplint_output, "\n")

  if v:shell_error
    cexpr l:phplint_list
    copen
    exec "nnoremap <silent> <buffer> q :ccl<CR>"
  else
    cclose
    echomsg l:phplint_list[0]
  endif
endfunction

set errorformat=%m\ in\ %f\ on\ line\ %l
command! Phplint call RunPhplint()
