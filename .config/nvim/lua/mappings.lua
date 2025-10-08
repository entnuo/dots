local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<C-g>', ':ZenMode<CR>')
-- map('n', '<C-l>', ':set foldmethod=indent<CR>',{noremap = true})
-- map('n', '<C-k>', ':set foldmethod=syntax<CR>',{noremap = true})
map('x', 'K', ":move '<-2<CR>gv-gv") -- move blocks of text
map('x', 'J', ":move '>+1<CR>gv-gv") -- move blocks of text

-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- spliting
map('n', '<Leader>sh', ':split<CR>') -- split horizontally
map('n', '<Leader>sv', ':vsplit<CR>') -- split vertically

-- qol
map('n', '<Leader>w', ':w<CR>') -- save
map('n', '<Leader>x', ':x<CR>') -- save and exit
