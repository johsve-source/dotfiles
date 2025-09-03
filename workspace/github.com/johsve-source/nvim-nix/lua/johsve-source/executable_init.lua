-- load set vim options
require("johsve-source.options")

-- NOTE: Add LSP & Plugins before keymaps and autocmds as some
-- of the keymaps and autocmd depend upon these plugins

-- Setup & Config for LSP Server per language
require("johsve-source.lsp")

-- load plugins
require("johsve-source.plugins")

-- load set vim keymaps
require("johsve-source.keymaps")

-- load set vim autocmds
require("johsve-source.autocmds")
