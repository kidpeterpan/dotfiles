-- ## Leader
vim.g.mapleader = " "
vim.keymap.set("n", "<Up>", '<NOP>')
vim.keymap.set("n", "<Down>", '<NOP>')
vim.keymap.set("n", "<Left>", '<NOP>')
vim.keymap.set("n", "<Right>", '<NOP>')

-- ## File Explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set('n','<Leader>ff',':lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n','<Leader>fg',':lua require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n','<Leader>fb',':lua require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n','<Leader>fh',':lua require("telescope.builtin").help_tags()<CR>')
vim.keymap.set('','<C-c>','"*y :let @+=@*<CR>',{ noremap = true, silent = true })
vim.keymap.set('','<C-v>','"+p',{ noremap = true, silent = true })

-- ## Vim Go
-- ### Runing and Debugging
vim.keymap.set('n','<Leader>gr',':GoRun<CR>')
-- ### Nagigate
vim.keymap.set('n','ga',':GoAlternate<CR>') -- jump between implementation file & test file
vim.keymap.set('n','gr',':GoReferrers<CR>')
-- ### Refactoring
vim.keymap.set('n','<Leader>rn',':GoRename<CR>')
