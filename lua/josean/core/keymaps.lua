vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab




-- vim map for clipboard
keymap.set("v", "<C-c>", '"+y')
keymap.set("n", "<C-p>", '"+P')


keymap.set("n", "cc", ":CopilotChat<CR>", { noremap = true, silent = true })
keymap.set("n", "cp", ":CopilotChatPanel<CR>", { noremap = true, silent = true })


keymap.set("n", "u", ":undo<CR>", { noremap = true, silent = true })
keymap.set("n", "r", ":redo<CR>", { noremap = true, silent = true })

-- // config list method in class
local telescope = require('telescope.builtin')
keymap.set('n', '<leader>fn', function()
  telescope.lsp_document_symbols({
    symbols = { "function", "method" }
  })
end, { desc = "List Functions and Methods" })