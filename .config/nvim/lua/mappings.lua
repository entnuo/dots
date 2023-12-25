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
map('n', '<C-l>', ':set foldmethod=indent<CR>',{noremap = true})
map('n', '<C-k>', ':set foldmethod=syntax<CR>',{noremap = true})
map('x', 'K', ":move '<-2<CR>gv-gv")
map('x', 'J', ":move '>+1<CR>gv-gv")

-- disable arrow keys (training)
--map('i', '<up>', '<NOP>')
--map('i', '<down>', '<NOP>')
--map('i', '<left>', '<NOP>')
--map('i', '<right>', '<NOP>')
--map('n', '<up>', ':echoerr "use k instead"<CR>')
--map('n', '<down>', ':echoerr "use j instead"<CR>')
--map('n', '<left>', ':echoerr "use h instead"<CR>')
--map('n', '<right>', ':echoerr "use l instead"<CR>')

-- "autopairs"
--map('i', '"', '""<left>')
--map('i', "'", "''<left>")
--map('i', '(', '()<left>')
--map('i', '[', '[]<left>')
--map('i', '{', '{}<left>')

-- open terms
map("n", "<C-S-d>", [[<Cmd>vnew term://zsh <CR>]], opt) -- term over right
map("n", "<C-b>", [[<Cmd> split term://zsh | resize 10 <CR>]], opt) --  term bottom
map("n", "<C-t>", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab
