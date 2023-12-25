local o = vim.opt
local g = vim.g

-- too lazy to label these under specific categories (comments from old config)
o.clipboard = 'unnamedplus'  --   system clipboard
o.cursorline = true          --   highlibe cursor line
o.hlsearch = true            --   highlight search
o.ignorecase = true          --   case insensitive
o.swapfile = false           --   do not use a swapfile
o.termguicolors = true       --   enables 24-bit colours
o.wildignorecase = true      --   ignore case when completing file names
o.wrap = true                --   (maybe ill change later)
o.timeoutlen = 400
o.scrolloff = 3
o.lazyredraw = true

-- indent
o.expandtab = true           --   use spaces when tab is inserted
o.shiftwidth = 4             --   spaces autoindent use
o.smartindent = true

-- numbers
o.number = true              --   add line number
o.numberwidth = 4            --   columns used for line number
o.relativenumber = true      --   relative number for each line

-- mouse
o.mouse = 'v'                --   middle-click to paste
o.mouse= 'a'                 --   enable mouse click. mouse=v needs to go first in order to mouse=a to be enabled

-- split
o.splitbelow = true          --   new window from split is bellow the current one
o.splitright = true          --   new window from split is put right of the current one

-- disable nvim intro
o.shortmess:append("sI")
