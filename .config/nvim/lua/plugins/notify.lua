return {
	"rcarriga/nvim-notify",
	priority = 0,
	config = function()
		vim.notify = require("notify")
		vim.notify.setup {
			stages = 'fade_in_slide_out',
			background_colour = 'FloatShadow',
			timeout = 3000,
			top_down = true,
		}
	end
}
