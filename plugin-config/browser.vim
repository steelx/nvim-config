
function! s:open_browser(mode) abort
    call assert_true(a:mode ==# 'char')
    execute 'normal! `[v`]y'
    let l:new_value = getreg('"')
    call openbrowser#smart_search(l:new_value)
endfunction

nnoremap <silent> o :<C-U>set opfunc=<SID>open_browser<CR>g@

