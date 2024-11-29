return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  -- LSP関連のプラグインを無効化
  {
    "neovim/nvim-lspconfig",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    enabled = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = false,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = false,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    enabled = false,
  },

  -- Copilotプラグインの設定
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false }, -- サジェストを有効化
        panel = { enabled = false }, -- 提案パネルを無効化
      })
    end,
  },

  -- nvim-cmp（Copilot専用補完ソースとして設定）
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "zbirenbaum/copilot-cmp" },
    config = function()
      require("config.cmp") -- `cmp`設定を外部ファイルから読み込む
    end,
  },

  -- Copilotとnvim-cmpの統合
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
