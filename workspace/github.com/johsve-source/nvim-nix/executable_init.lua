local data = vim.fn.stdpath("data")
vim.opt.runtimepath:prepend(data .. "/site")
vim.cmd("set tags=" .. data .. "/tags")

require("johsve-source")
