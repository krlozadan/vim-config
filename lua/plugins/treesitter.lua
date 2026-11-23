-- Abstract syntx tree and LSPs
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install { 'lua', 'c_sharp' }
    end
}

