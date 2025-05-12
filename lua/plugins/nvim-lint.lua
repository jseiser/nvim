return {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>cl",
            function()
                require("lint").try_lint()
            end,
            mode = "n",
            desc = "Lint buffer",
        },
    },
    config = function()
        require('lint').linters_by_ft = {
            terraform = { 'tflint' },
            dockerfile = { "hadolint" },
        }
    end
}
