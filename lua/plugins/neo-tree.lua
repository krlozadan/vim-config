-- Neo-Tree: file explorer view
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
        vim.keymap.set('n', '|', ':Neotree toggle action=focus source=filesystem position=left<cr>', { desc = 'Neotree toggle file explorer' })
        vim.keymap.set('n', '<leader>gs', ':Neotree toggle action=focus source=git_status position=float<cr>', { desc = 'Neotree toggle git status window' })
        require("neo-tree").setup({
            window = {
                mappings = {
                    -- Map 'Y' to copy the absolute file path to the system clipboard
                    ["Y"] = {
                        function(state)
                            local node = state.tree:get_node()
                            local path = node:get_id()
                            vim.fn.setreg("+", path)
                            print("Copied path: " .. path)
                        end,
                        desc = "Copy absolute path to clipboard",
                    },
                },
            },
        })
    end
}
