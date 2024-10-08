return {
	"tpope/vim-fugitive",
	config = function()
		-- Gán phím tắt cho các lệnh Git
		local map = vim.api.nvim_set_keymap
		local options = { noremap = true, silent = true }

		-- Git commands
		map("n", "<leader>gs", ":Git<CR>", options) -- git status
		map("n", "<leader>gd", ":Gdiff<CR>", options) -- git diff
		map("n", "<leader>gc", ":Git commit<CR>", options) -- git commit
		map("n", "<leader>gp", ":Git push<CR>", options) -- git push
		map("n", "<leader>gB", ":Git branch<CR>", options) -- git branch
		map("n", "<leader>gl", ":Git pull<CR>", options) -- git pull
	end,
}
