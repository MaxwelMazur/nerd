local plugins = {
    {"terrortylor/nvim-comment"},
    {"goolord/alpha-nvim"},
    {"nvim-telescope/telescope.nvim", tag = "0.1.1"},
    {"nvim-lua/plenary.nvim"}, -- dependencia do telescope
    {"nvim-treesitter/nvim-treesitter"},
    {"VonHeikemen/lsp-zero.nvim"},

    -- LSP Support
    {"neovim/nvim-lspconfig"}, -- dependencia lsp
    {"williamboman/mason.nvim"}, -- dependencia lsp
    {"williamboman/mason-lspconfig.nvim"}, -- dependencia lsp

    -- Autocompletion
    {"hrsh7th/nvim-cmp"}, -- dependencia lsp
    {"hrsh7th/cmp-buffer"}, -- dependencia lsp
    {"hrsh7th/cmp-path"}, -- dependencia lsp
    {"saadparwaiz1/cmp_luasnip"}, -- dependencia lsp
    {"hrsh7th/cmp-nvim-lsp"}, -- dependencia lsp
    {"hrsh7th/cmp-nvim-lua"}, -- dependencia lsp

    -- Snippets
    {"L3MON4D3/LuaSnip"}, -- dependencia lsp
    {"rafamadriz/friendly-snippets"}, -- dependencia lsp

    {"lewis6991/gitsigns.nvim"},
    {"andweeb/presence.nvim"},
    {"RRethy/vim-illuminate"},
    {"nvim-tree/nvim-web-devicons"},
    {"lukas-reineke/indent-blankline.nvim"},

    -- themes
    {"catppuccin/nvim"},
    {"navarasu/onedark.nvim"},
    {"nvim-tree/nvim-tree.lua"},
}

return plugins
