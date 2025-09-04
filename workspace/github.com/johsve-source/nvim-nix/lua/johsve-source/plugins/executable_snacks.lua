return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
			preset = {
        ---@type snacks.dashboard.Item[]
        -- stylua: ignore start
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = function()
          require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
          end,
          },
          { icon = " ", key = "n", desc = "New File", action = function()
          vim.cmd("ene | startinsert")
          end,
          },
          { icon = " ", key = "s", desc = "Find Text", action = function()
          require("telescope.builtin").live_grep({ cwd = vim.fn.getcwd() })
          end,
          },
          { icon = " ", key = "b", desc = "File Browser", action = function()
          require("yazi").yazi(nil, vim.fn.getcwd())
          end,
          },
          { icon = " ", key = "g", desc = "Lazygit", action = function()
          require("snacks").lazygit.open({ cwd = vim.fn.getcwd() })
          end,
          },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = function()
          if package.loaded.lazy then vim.cmd("Lazy check") end
          end,
          },
          { icon = " ", key = "q", desc = "Quit", action = function()
          vim.cmd("qa")
          end,
          },
        },
			},
			sections = {
				{ section = "header", pane = 1 },
				{ section = "keys", gap = 1, pane = 1 },
				{ title = "Recent Files", section = "recent_files", cwd = true, pane = 1 },
				{ section = "startup", pane = 1 },
				function()
					local in_git = Snacks.git.get_root() ~= nil
					local cmds = {
						{
							icon = " ",
							title = "Git Status",
							cmd = [[
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [ -n "$branch" ] && echo "  Branch: $branch"
  git_status=$(git status --porcelain 2>/dev/null)
  staged=$(echo "$git_status" | grep -E "^[AMDR]" | wc -l)
  unstaged=$(echo "$git_status" | grep -E "^.[MD]" | wc -l)
  untracked=$(echo "$git_status" | grep "^??" | wc -l)
  [ "$staged" -gt 0 ] && echo "  $staged staged"
  [ "$unstaged" -gt 0 ] && echo "  $unstaged unstaged"
  [ "$untracked" -gt 0 ] && echo "  $untracked untracked"
  [ "$staged" -eq 0 ] && [ "$unstaged" -eq 0 ] && [ "$untracked" -eq 0 ] && echo "  Clean working tree!"
  echo ""
  echo "  Last commit:"
  git log --oneline -1 2>/dev/null
]],
							height = 7,
							gap = 2,
						},
					}
					return vim.tbl_map(function(cmd)
						return vim.tbl_extend("force", {
							pane = 2,
							section = "terminal",
							enabled = in_git,
							padding = 1,
							ttl = 60,
							indent = 3,
						}, cmd)
					end, cmds)
				end,
			},
		},
		explorer = { enabled = true },
		git = { enabled = true },
		indent = { enabled = true },
		input = { enabled = false },
		lazygit = { enabled = true },
		picker = { enabled = false },
		notifier = { enabled = true },
		quickfile = { enabled = false },
		scope = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		toggle = { enabled = true },
		util = { enabled = false },
		words = { enabled = false },
	},
  -- stylua: ignore
  keys = {
    { "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
    -- Explorer Keymaps
    { "<leader>e", function() Snacks.explorer({ cwd = Snacks.git.get_root() }) end, desc = "Explorer Snacks (root dir)"},
    { "<leader>E", function() Snacks.explorer() end, desc = "Explorer Snacks (cwd)"},
    { "<leader>fe", function() Snacks.explorer({ cwd = Snacks.git.get_root() }) end, desc = "Explorer Snacks (root dir)"},
    { "<leader>fE", function() Snacks.explorer() end, desc = "Explorer Snacks (cwd)"},
  },
}
