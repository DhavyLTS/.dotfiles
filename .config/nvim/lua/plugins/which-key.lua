return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 100
	end,
	config = function()
		require("which-key").setup();

		require("which-key").register({
			["<leader>"] = {
				["Q"] = { "<cmd>qa<cr>", "Quit All" },
				["q"] = { "<cmd>q<cr>", "Quit" },
				["f"] = {
					name = "Telescope",
					["f"] = { "<cmd>Telescope find_files<cr>", "Find File" },
					["b"] = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
					["g"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
					["c"] = { "<cmd>Huez<cr>", "Find Colorscheme" },
				},
			},
			["[d"] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Previous Diagnostic" },
			["]d"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
			["gl"] = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Show Diagnostic" },
			["<F4>"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },

			["<C-q>"] = { "<cmd>bprev<cr>", "Previous Buffer" },
			["<C-w>"] = { "<cmd>bdelete<cr>", "Close Buffer" },
			["<C-e>"] = { "<cmd>bnext<cr>", "Next Buffer" },
			["<C-s>"] = { "<cmd>w<cr>", "Save" },

			mode = { "n" }
		})

		require("which-key").register({
			["<C-Down>"] = { "<cmd>move +1<cr>", "Move Line Down" },
			["<C-Up>"] = { "<cmd>move -2<cr>", "Move Line Up" },

			["<C-q>"] = { "<cmd>normal! b<cr>", "Previous Word" },
			["<C-e>"] = { "<cmd>normal! w<cr>", "Next Word" },
			mode = { "i" }
		})

		require("which-key").register({
			["<C-Up>"] = { require("smart-splits").move_cursor_up, "Move Cursor Up" },
			["<C-Down>"] = { require("smart-splits").move_cursor_down, "Move Cursor Down" },
			["<C-Left>"] = { require("smart-splits").move_cursor_left, "Move Cursor Left" },
			["<C-Right>"] = { require("smart-splits").move_cursor_right, "Move Cursor Right" },

			["<A-Up>"] = { require("smart-splits").resize_up, "Resize Up" },
			["<A-Down>"] = { require("smart-splits").resize_down, "Resize Down" },
			["<A-Left>"] = { require("smart-splits").resize_left, "Resize Left" },
			["<A-Right>"] = { require("smart-splits").resize_right, "Resize Right" },

			["<C-M-Up>"] = { require("smart-splits").swap_buf_up, "Swap Buffer Up" },
			["<C-M-Down>"] = { require("smart-splits").swap_buf_down, "Swap Buffer Down" },
			["<C-M-Left>"] = { require("smart-splits").swap_buf_left, "Swap Buffer Left" },
			["<C-M-Right>"] = { require("smart-splits").swap_buf_right, "Swap Buffer Right" },

			["<C-\'>"] = { "<cmd> ToggleTerm direction=horizontal size=20 <cr>", "Terminal Horizontal" },
			["<C-\">"] = { "<cmd> ToggleTerm direction=vertical size=60 <cr>", "Terminal Vertical" },
			mode = { "n", "t" }
		})
	end
}
