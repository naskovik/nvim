function ColorDeezPencils(color)

    color = color or "evergarden"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {

    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { bold = true },
                theme = "wave",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "wave",           -- try "dragon" !
                    light = "lotus"
                },
            })

        end

    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = "macchiato", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "macchiato",
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = true, -- Force no italic
                no_bold = true, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { nil }, -- Change the style of comments
                    conditionals = { nil },
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

        end
    },

    { "neanias/everforest-nvim" },

    {
        'comfysage/evergarden',
        opts = {
            transparent_background = false,
            contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
            overrides = { }, -- add custom overrides
        },
        config = function()
            require 'evergarden'.setup {
                transparent_background = false,
                contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
                override_terminal = true,
                style = {
                    tabline = { reverse = true, color = 'green' },
                    search = { reverse = false, inc_reverse = true },
                    types = { italic = false },
                    keyword = { italic = false },
                    comment = { italic = false },
                },
                overrides = { }, -- add custom overrides
            }
            ColorDeezPencils('evergarden')
        end
    }

}
