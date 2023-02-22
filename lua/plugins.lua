local plugins = {
    {"terrortylor/nvim-comment"},
    {"goolord/alpha-nvim"},
    {"nvim-telescope/telescope.nvim", tag = "0.1.1"},
    {"nvim-lua/plenary.nvim"}, -- dependencia do telescope
    {"catppuccin/nvim"},
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
    {"nvim-neo-tree/neo-tree.nvim"},
    {"nvim-lua/plenary.nvim"}, -- dependencia neo-tree
    {"MunifTanjim/nui.nvim"}, -- dependencia neo-tree
    {"nvim-tree/nvim-web-devicons"}, -- dependencia neo-tree
}

return plugins
