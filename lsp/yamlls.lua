return {
    cmd = { 'yaml-language-server', '--stdio' },
    filetypes = { 'yaml', 'yml', 'yaml.docker-compose', 'yaml.gitlab' },
    root_markers = { '.git' },
    settings = {
        yaml = {
            hover = true,
            format = {
                enable = true,
            },
            completion = true,
            validate = true,
            customTags = { '!reference sequence' },
        },
        -- https://github.com/redhat-developer/vscode-redhat-telemetry#how-to-disable-telemetry-reporting
        redhat = { telemetry = { enabled = false } },
    },
}
