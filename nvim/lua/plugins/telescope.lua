return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>to", builtin.find_files, {})
			vim.keymap.set("n", "<leader>tp", function()
				builtin.find_files({ cwd = vim.fn.expand("%:p:h"), hidden = true })
			end, {})

			vim.keymap.set("n", "<leader>tj", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>tk", function()
				builtin.live_grep({ search_dirs = { vim.fn.expand("%:p") } })
			end, {})

			vim.keymap.set("n", "<leader>ti", builtin.git_files, {})
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
