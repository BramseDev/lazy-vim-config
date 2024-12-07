vim.api.nvim_set_keymap("i", "jj", "<Esc>", {noremap=false})
-- twilight
vim.api.nvim_set_keymap("n", "tw", ":Twilight<enter>", {noremap=false})
-- buffers
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", {noremap=false})
-- files
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", {noremap=false})
vim.api.nvim_set_keymap("n", "E", "$", {noremap=false})
vim.api.nvim_set_keymap("n", "B", "^", {noremap=false})
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", {noremap=true})
--
-- splits
--
vim.api.nvim_set_keymap("n", "<C-W>,", ":vertical resize -10<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-W>.", ":vertical resize +10<CR>", {noremap=true})
vim.keymap.set('n', '<space><space>', "<cmd>set nohlsearch<CR>")
-- Quicker close split
vim.keymap.set("n", "<leader>qq", ":q<CR>",
  {silent = true, noremap = true}
)

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Noice
vim.api.nvim_set_keymap("n", "<leader>nn", ":Noice dismiss<CR>", {noremap=true})

vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<cr>",
  {silent = true, noremap = true}
)


-- Enter Normal Mode with 'j+k' in Insert Mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Map Caps Lock to Normal Mode
vim.api.nvim_set_keymap("i", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<CapsLock>", "<C-c>", { noremap = true, silent = true }) -- Command Mode
vim.api.nvim_set_keymap("t", "<CapsLock>", "<C-\\><C-n>", { noremap = true, silent = true }) -- Terminal Mode

-- Editor navigation
vim.api.nvim_set_keymap("n", "<cmd>k", ":bn<CR>", { noremap = true, silent = true }) -- Next buffer
vim.api.nvim_set_keymap("n", "<cmd>j", ":bp<CR>", { noremap = true, silent = true }) -- Previous buffer

-- Terminal commands
vim.api.nvim_set_keymap("n", "<cmd>n", ":terminal<CR>", { noremap = true, silent = true }) -- Open terminal
vim.api.nvim_set_keymap("n", "<cmd><Enter>", ":ToggleTerm<CR>", { noremap = true, silent = true }) -- Toggle terminal
vim.api.nvim_set_keymap("n", "<cmd><C-Enter>", ":lua require('toggleterm').toggle_all()<CR>", { noremap = true, silent = true }) -- Maximize terminal panel
vim.api.nvim_set_keymap("n", "<cmd>d", ":split | terminal<CR>", { noremap = true, silent = true }) -- Split terminal

-- Sidebar toggles
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) -- Toggle sidebar
vim.api.nvim_set_keymap("n", "<C-S-b>", ":LspToggle<CR>", { noremap = true, silent = true }) -- Toggle auxiliary bar

-- Copilot and inline suggestion
vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Accept('<CR>')", { noremap = true, expr = true, silent = true }) -- Accept suggestion
vim.api.nvim_set_keymap("i", "<C-k>", "copilot#Next()", { noremap = true, expr = true, silent = true }) -- Next suggestion
vim.api.nvim_set_keymap("i", "<C-h>", "copilot#Previous()", { noremap = true, expr = true, silent = true }) -- Previous suggestion
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.MiniTrailspace.trim_last()", { noremap = true, expr = true, silent = true }) -- Commit inline suggestion


-- File Finder auf Ctrl+Shift+P
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", { noremap = true, silent = true })



-- Wechsel zwischen Fenstern mit ALT + H/J/K/L
vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Wechsel zum linken Fenster" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Wechsel zum unteren Fenster" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Wechsel zum oberen Fenster" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Wechsel zum rechten Fenster" })

-- Fenster schließen mit ALT + Q
vim.keymap.set("n", "<M-q>", "<C-w>c", { desc = "Fenster schließen" })



-- Tabulator für Einrückung im Normal- und Einfügemodus
vim.keymap.set("i", "<Tab>", "<Tab>", { noremap = true, silent = true })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true })

-- Optional für Visual Mode
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })




-- Vertikalen Split mit ALT+B
vim.keymap.set("n", "<M-b>", ":vsplit<CR>", { desc = "Vertikalen Split öffnen" })

-- Horizontalen Split mit ALT+N
vim.keymap.set("n", "<M-n>", ":split<CR>", { desc = "Horizontalen Split öffnen" })

-- Terminal in einem vertikalen Split mit ALT+B + T
vim.keymap.set("n", "<M-b><M-t>", ":vsplit | terminal<CR>", { desc = "Terminal in vertikalem Split" })

-- Terminal in einem horizontalen Split mit ALT+N + T
vim.keymap.set("n", "<M-n><M-t>", ":split | terminal<CR>", { desc = "Terminal in horizontalem Split" })





