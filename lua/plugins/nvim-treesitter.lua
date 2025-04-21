-- nvim-treesitter
-- Helps NEoVim understand different languages.
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { 
                "c",
                "elixir",
                "go",
                "gomod",
                "gosum",
                "heex",
                "html",
                "javascript",
                "jinja",
                "jinja_inline",
                "lua",
                "mermaid",
                "python",
                "query",
                "vim",
                "vimdoc"
            },

            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                    node_incremental = "<Enter>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },

        })
    end
}
