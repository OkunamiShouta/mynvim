local cmp = require("cmp")

cmp.setup({
  sources = {
    { name = "copilot" }, -- Copilotを唯一の補完ソースとして設定
  },
  mapping = {
        ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- 補完を確定
  },
  experimental = {
    ghost_text = true, -- ゴーストテキストを有効化
  },
})

