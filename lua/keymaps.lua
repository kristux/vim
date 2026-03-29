local map = vim.keymap.set

-- Reload config
map('n', '<leader>s', ':source $MYVIMRC<CR>', { silent = true })

-- Clear search highlight
map('n', '<Esc>', ':nohlsearch<Bar>:echo<CR>', { silent = true })

-- Paste from vimbuffer
map('n', '<leader>p', ':r ~/.vimbuffer<CR>')

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>')

-- Diagnostics
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)
map('n', '<leader>e', vim.diagnostic.open_float)
