return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require('gitsigns').setup {
			sign_priority = 0,
			current_line_blame = true,
		}
	end
}
