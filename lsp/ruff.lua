---@brief
---

local function set_python_path(path)
    local clients = vim.lsp.get_clients({
        bufnr = vim.api.nvim_get_current_buf(),
        name = "ruff",
    })
    for _, client in ipairs(clients) do
        if client.settings then
            client.settings.python = vim.tbl_deep_extend("force", client.settings.python or {}, { pythonPath = path })
        else
            client.config.settings =
                vim.tbl_deep_extend("force", client.config.settings, { python = { pythonPath = path } })
        end
        client.notify("workspace/didChangeConfiguration", { settings = nil })
    end
end

return {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        "Pipfile",
        "ruff.toml",
        ".ruff.toml",
        "pyrightconfig.json",
        ".git",
    },
    settings = {},
    on_attach = function(client, bufnr)
        vim.api.nvim_buf_create_user_command(0, "LspPyrightSetPythonPath", set_python_path, {
            desc = "Reconfigure ruff with the provided python path",
            nargs = 1,
            complete = "file",
        })
    end,
}
