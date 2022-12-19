" addepted from https://vim.fandom.com/wiki/Folding_for_plain_text_files_based_on_indentation
" usefull informations on folding: https://learnvimscriptthehardway.stevelosh.com/chapters/49.html
setlocal foldmethod=expr
setlocal foldexpr=AgendaFoldExpr()
setlocal foldtext=getline(v:foldstart)
setlocal fillchars=fold:\ "(there's a space after that \)

highlight Folded guibg=synIDattr(hlID('SignColumn'),'bg')

function! AgendaFoldExpr()
	if (getline(v:lnum)=~'^$')
		return 0
	endif
  if (indent(v:lnum)<indent(v:lnum+1))
    return 1
  endif
  if (indent(v:lnum)>0)
    if (indent(v:lnum+1)==0)
      return "<1"
    else
      return 1
    endif
  else
    return 0
  endif
endfunction
