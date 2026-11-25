return {
    {
        'mason-org/mason.nvim',
        opts = {}
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            vim.lsp.enable('roslyn_ls')
            vim.lsp.enable('lua_ls')
            vim.keymap.set('n', 'K', vim.lsp.buf.hover)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
        end
    }
}
