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

-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
  {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}},
  {"folke/zen-mode.nvim", dependencies = {'folke/twilight.nvim'}},
  {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  {
      "saghen/blink.cmp",
      -- optional: provides snippets for the snippet source
      dependencies = { "rafamadriz/friendly-snippets" },
      version = "*",
      opts = {
          keymap = {
              preset = "enter",
              -- Select completions
              ["<Up>"] = { "select_prev", "fallback" },
              ["<Down>"] = { "select_next", "fallback" },
              ["<Tab>"] = { "select_next", "fallback" },
              ["<S-Tab>"] = { "select_prev", "fallback" },
              -- Scroll documentation
              ["<C-b>"] = { "scroll_documentation_up", "fallback" },
              ["<C-f>"] = { "scroll_documentation_down", "fallback" },
              -- Show/hide signature
              ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
          },
          appearance = {
              -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
              nerd_font_variant = "mono",
          },
          sources = {
              -- `lsp`, `buffer`, `snippets`, `path`, and `omni` are built-in
              default = { "lsp", "path", "snippets", "buffer" },
          },
          fuzzy = { implementation = "prefer_rust_with_warning" },
          completion = {
              -- The keyword should only match against the text before
              keyword = { range = "prefix" },
              menu = {
                  -- Use treesitter to highlight the label text for the given list of sources
                  draw = {
                      treesitter = { "lsp" },
                  },
              },
              -- Show completions after typing a trigger character, defined by the source
              trigger = { show_on_trigger_character = true },
              documentation = {
                  -- Show documentation automatically
                  auto_show = true,
              },
          },
          -- Signature help when tying
          signature = { enabled = true },
      },
      opts_extend = { "sources.default" },
  },

-- LSP manager
	{ "mason-org/mason.nvim", opts = {} },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        opts = { ensure_installed = { "clangd" },
        },
    },
--LspConfig
    {
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({})
		end,
	},
})
