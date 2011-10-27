
let s:save_cpo = &cpo
set cpo&vim

function! unite#filters#converter_erase_bufnr#define()
  return s:converter
endfunction

let s:converter = {
      \ 'name'        : 'converter_erase_bufnr',
      \ 'description' : 'erase bufnr like [16 h]',
      \}

function! s:converter.filter(candidates, context)

  for candidate in a:candidates
    let candidate.abbr = substitute(candidate.abbr, '\s\[\d\+\s.\+\]\s*$', '', '')
  endfor

  return a:candidates
endfunction"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

