
-- キーマップ用の共通オプション
local opts = { noremap = true, silent = true }

-- Alt+e でファイルエクスプローラーをトグル
vim.keymap.set("n", "<A-e>", ":Neotree toggle<CR>", opts)

-- Alt+w, Alt+s, Alt+a, Alt+d で上下左右に移動
vim.keymap.set("n", "<A-w>", "k", opts) -- 上
vim.keymap.set("n", "<A-s>", "j", opts) -- 下
vim.keymap.set("n", "<A-a>", "h", opts) -- 左
vim.keymap.set("n", "<A-d>", "l", opts) -- 右

vim.keymap.set("v", "<A-w>", "k", opts) -- 上 (ビジュアルモード)
vim.keymap.set("v", "<A-s>", "j", opts) -- 下
vim.keymap.set("v", "<A-a>", "h", opts) -- 左
vim.keymap.set("v", "<A-d>", "l", opts) -- 右

vim.keymap.set("i", "<A-w>", "<Up>", opts)    -- 上 (挿入モード)
vim.keymap.set("i", "<A-s>", "<Down>", opts)  -- 下
vim.keymap.set("i", "<A-a>", "<Left>", opts)  -- 左
vim.keymap.set("i", "<A-d>", "<Right>", opts) -- 右


-- jjをEscキーにマッピング（挿入モード）
vim.keymap.set({"i","n","v"}, "jj", "<Esc>", opts)
vim.keymap.set({"i","n","v"}, "<A-q>", "<cmd>q<CR>", opts)
