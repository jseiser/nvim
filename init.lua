require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.filetype")

vim.lsp.enable({
    "yamlls",
    "gitlab_ci_ls",
    "lua_ls",
    "terraformls",
    "docker_compose_language_service",
    "dockerls",
    "basedpyright",
})

vim.diagnostic.config({
    underline = true,
    virtual_text = true,
})
