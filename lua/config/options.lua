local opts = {
    clipboard = "unnamedplus",
    number = true,
    relativenumber = true,
    wrap = false,
    tabstop = 2,
    expandtab = true,
    shiftwidth = 2,
    smartcase = true,
    ignorecase = true,
    signcolumn = "yes",
    termguicolors = true,
}

-- Set options from table
for opt, val in pairs(opts) do
    vim.o[opt] = val
end

-- Set other options
vim.cmd.colorscheme("onedark")
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
