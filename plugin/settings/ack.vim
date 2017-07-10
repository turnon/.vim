" if silver searcher is installed, use `ag` instead of `ack`
" for more information, please visit https://github.com/ggreer/the_silver_searcher

if executable("ag")
  let g:ackprg = 'ag --nogroup --nocolor --column'
  noremap FF :Ack<SPACE>
  cnoreabbrev Ack Ack!
  nnoremap <Leader>g :Ack!<Space>
else
  if executable("ack")
    noremap FF :Ack<SPACE>
    cnoreabbrev Ack Ack!
    nnoremap <Leader>g :Ack!<Space>
  else
    noremap FF :echo "you need to install ACK or AG first!"<CR>
  endif
endif

