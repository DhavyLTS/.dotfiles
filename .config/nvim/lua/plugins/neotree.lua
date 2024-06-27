return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup {
			sort_function = function(a, b)
				if a.type == "directory" and b.type == "directory" then
					return a.path < b.path
				end

				if a.type == "file" and b.type == "file" then
					if a.ext == b.ext then                  -- same extension
						if a.name == "mod.rs" then return false end -- send mod.rs files to the bottom
						if b.name == "mod.rs" then return true end -- send mod.rs files to the bottom
						return a.name < b.name                -- sort files by name alphabetically
					end
					if a.ext ~= nil and b.ext ~= nil then   -- group files with same extension together
						return a.ext < b.ext                  -- sort files by extension
					end
					if a.ext == nil then return false end   -- send files with no extension to the bottom
					if b.ext == nil then return true end    -- send files with no extension to the bottom
					return a.name < b.name                  -- sort files by name alphabetically
				end
				return a.type < b.type                    -- sort directories first
			end,
			filesystem = {
				filtered_items = {
					hide_by_name = {
						"node_modules",
						"Cargo.lock",
						"target",
					}
				}
			},
			enable_git_status = false,
			event_handlers = { {
				event = "file_opened",
				handler = function()
					require("neo-tree.command").execute({ action = "close" })
				end
			} },
		};
		vim.keymap.set({ "n" }, "<leader>e", "<cmd>Neotree toggle<cr>", { remap = false, silent = true });
	end
}
