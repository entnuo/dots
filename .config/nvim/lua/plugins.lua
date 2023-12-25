-- disable builtin vim plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  "ap/vim-css-color",
  "folke/tokyonight.nvim",
  "ojroques/nvim-hardline",
  "nvim-treesitter/nvim-treesitter",
  {"alvan/vim-closetag", opt = true, ft = 'html'},
  {"tpope/vim-markdown", opt = true, ft = "markdown"},
  {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}},
  {"iamcco/markdown-preview.nvim", opt = true, ft = "markdown"},
  {"folke/zen-mode.nvim", dependencies = {'folke/twilight.nvim'}},
  {"romgrk/barbar.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
})
