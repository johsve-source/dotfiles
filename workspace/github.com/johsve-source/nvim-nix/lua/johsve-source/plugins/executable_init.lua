-- NOTE: nixCats: might want to move the lazy-lock.json file
local function getlockfilepath()
	if require("nixCatsUtils").isNixCats and type(nixCats.settings.unwrappedCfgPath) == "string" then
		return nixCats.settings.unwrappedCfgPath .. "/lazy-lock.json"
	else
		return vim.fn.stdpath("config") .. "/lazy-lock.json"
	end
end

local lazyOptions = {
	lockfile = getlockfilepath(),
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
}

-- NOTE: Here is where you install your plugins.
-- NOTE: nixCats: this the lazy wrapper. Use it like require('lazy').setup() but with an extra
-- argument, the path to lazy.nvim as downloaded by nix, or nil, before the normal arguments.
require("nixCatsUtils.lazyCat").setup(nixCats.pawsible({ "allPlugins", "start", "lazy.nvim" }), {
	-- load plugins here

	-- NOTE: Themes
	-- Choose theme by using the config option.

	-- [ "tokyonight", "tokyonight-day", "tokyonight-storm", "tokyonight-moon", "tokyonight-night" ]
	{ "folke/tokyonight.nvim" },
	-- [ "catppuccin", "catppuccin-latte", "catppuccin-frappe", "catppuccin-macchiato", "catppuccin-mocha" ]
	{ "catppuccin/nvim", name = "catppuccin.nvim" },
	-- [ "gruvbox-material" ]
	{ "sainnhe/gruvbox-material" },
	-- [ "rose-pine", "rose-pine-main", "rose-pine-moon", "rose-pine-dawn" ]
	{ "rose-pine/neovim", name = "rose-pine.nvim", opts = { styles = { transparency = true } } },
	-- [ "bjarneo/nes.nvim" ]
	{ "bjarneo/nes.nvim", opts = { styles = { transparency = true } } },

	-- NOTE: load mini-icons including nvim-dev-icons
	{ import = "johsve-source.plugins.mini-icons" },

	-- NOTE: animate cursor
	{ import = "johsve-source.plugins.smear-cursor" },

	-- NOTE: Which Keys
	{ import = "johsve-source.plugins.which-keys" },

	-- NOTE: Todo Comments
	{ import = "johsve-source.plugins.todo-comments" },

	-- NOTE: better diagnostics list and others
	{ import = "johsve-source.plugins.trouble" },

	-- NOTE: Git Signs
	{ import = "johsve-source.plugins.git-signs" },

	-- NOTE: Lualine
	{ import = "johsve-source.plugins.lualine" },

	-- NOTE: Folke Snacks
	{ import = "johsve-source.plugins.snacks" },

	-- NOTE: better comments
	{ import = "johsve-source.plugins.ts-comments" },

	-- NOTE: Fuzzy Finder (files, lsp, etc) Telescope
	{ import = "johsve-source.plugins.telescope" },

	-- NOTE: Markdown preview
	{ import = "johsve-source.plugins.render-markdown" },

	-- NOTE: Highlight, edit, and navigate code
	{ import = "johsve-source.plugins.treesitter" },

	-- NOTE: Mini Pairs
	{ import = "johsve-source.plugins.mini-pairs" },

	-- NOTE: properly configures LuaLS for editing your Neovim config
	{ import = "johsve-source.plugins.lazydev" },

	-- NOTE: autocomplete via blink.cmp
	{ import = "johsve-source.plugins.blink-cmp" },

	-- NOTE: conform formatter
	{ import = "johsve-source.plugins.conform" },
}, lazyOptions)

-- NOTE: Set theme from nixCats config and activate it
local colorscheme = nixCats("colorscheme")
if colorscheme == nil then
	colorscheme = "tokyonight-day"
end
vim.cmd.colorscheme(colorscheme)
