vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")
vim.cmd("set tags=" .. vim.fn.stdpath("data") .. "/tags")

require("johsve-source")
