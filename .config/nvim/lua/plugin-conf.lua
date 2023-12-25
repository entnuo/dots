-- tokyonight theme
vim.o.termguicolors = true
vim.cmd[[colorscheme tokyonight-night
         syntax on
         filetype on
         filetype plugin indent on
         "set background=dark
         "let g:limelight_conceal_ctermfg = 240
         "let g:limelight_conceal_guifg = '#777777'
         "hi! Normal ctermbg=NONE guibg=NONE 
         "hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
]]

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- barbar
vim.g.barbar_auto_setup = false -- disable auto-setup

require'barbar'.setup {
  animation = false,
  auto_hide = false,
  tabpages = true,
  clickable = true,

  icons = {
    filetype = {
      custom_colors = true,
      enabled = false,
    },
  },
}

-- hardline
require('hardline').setup {
  bufferline = false,  -- disable bufferline
  bufferline_settings = {
    exclude_terminal = false,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
  theme = 'default',   -- change theme
  sections = {         -- define sections
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'high', item = require('hardline.parts.git').get_item, hide = 100},
    {class = 'med', item = require('hardline.parts.filename').get_item},
    '%<',
    {class = 'med', item = '%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 100},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 60},
    {class = 'mode', item = require('hardline.parts.line').get_item},
  },
}

-- zen-mode
require'zen-mode'.setup {
    window = {
        height = 35,
    },
    plugins = {
        options = {
            enable = true,
        },
        twilight = {enable = true},
        gitsigns = {enable = false},
    },
}

local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup { indent = { highlight = highlight } }
