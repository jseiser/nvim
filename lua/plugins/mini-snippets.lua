return {
    {
        "echasnovski/mini.snippets",
        event = "InsertEnter", -- don't depend on other plugins to load...
        dependencies = "rafamadriz/friendly-snippets",
        opts = function()
            local gen_loader = require('mini.snippets').gen_loader
            require('mini.snippets').setup({
                snippets = {
                    -- Load custom file with global snippets first (adjust for Windows)
                    gen_loader.from_file('~/.config/nvim/snippets/global.json'),

                    -- Load snippets based on current language by reading files from
                    -- "snippets/" subdirectories from 'runtimepath' directories.
                    gen_loader.from_lang(),
                },
            })
        end,
    }
}
