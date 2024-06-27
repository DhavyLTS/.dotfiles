return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup {
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "Nvim Tree",
						separator = true,
						text_align = "center"
					}
				}
			}
		}
	end
}
