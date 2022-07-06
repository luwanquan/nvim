let g:coc_node_path = "/Users/luffy/.node/14.19.1/bin/node"
let mapleader = " "

" xmap <leader>ca  <Plug>(coc-codeaction-selected)
" nmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>qf <Plug>(coc-fix-current)

nmap gr <Plug>(coc-rename)
xmap gf <Plug>(coc-format-selected)
nmap gf <Plug>(coc-format-selected)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gh <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

