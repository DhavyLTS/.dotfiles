return {
	"vague2k/huez.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"stevearc/dressing.nvim",
		"tiagovla/tokyodark.nvim",
		"rebelot/kanagawa.nvim",
		"rose-pine/neovim",
	},
	config = function()
		require("huez").setup({});
	end
}
