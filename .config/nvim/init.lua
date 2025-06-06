-- Enable line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Enable auto indents
vim.opt.autoindent = true

-- Set tab width to 2 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Show tabs as special chars
vim.opt.list = true
vim.opt.listchars = { tab = '>-' }

-- use tabs in some languages
vim.api.nvim_create_autocmd({'FileType'}, {
  pattern = {'make', 'go'},
  callback = function(ev)
    vim.opt.list = false
    vim.opt.expandtab = false
  end
})

-- Set tree-view in file manager 
vim.g.netrw_liststyle = 3

-- set leader
vim.g.mapleader = " "

-- Add tabs mappings
vim.api.nvim_set_keymap('n', '<C-H>', ':tabprev <CR>', {})
vim.api.nvim_set_keymap('n', '<C-L>', ':tabnext <CR>', {})

-- Add buffer mappings
vim.api.nvim_set_keymap('n', '<C-J>', ':bp <CR>', {})
vim.api.nvim_set_keymap('n', '<C-K>', ':bn <CR>', {})

-- telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })

