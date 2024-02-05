return {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            harpoon = true,
            telescope = true,
            mason = true,
            noice = true,
            nvimtree = true,
            notify = true,
            which_key = true,
            fidget = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                },
                -- underlines = {
                --   errors = { "underline" },
                --   hints = { "underline" },
                --   warnings = { "underline" },
                --   information = { "underline" },
                -- },
                inlay_hints = {
                    background = true,
                },
            },
            mini = {
                enabled = true,
                indentscope_color = "",
            },
        },
        term_colors = true,
        transparent_background = true,
        priority = 1000,
    },
    config = function()
        vim.cmd.colorscheme 'catppuccin-macchiato'
    end
}
