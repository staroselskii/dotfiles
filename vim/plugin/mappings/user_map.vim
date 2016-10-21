" To open a new empty buffer
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nmap <C-h> :nohl<CR>
nmap <C-x> :set list!<CR>
nmap <C-I> :set paste!<CR>
nmap <C-s> :set spell!<CR>
