return {
    {"ellisonleao/gruvbox.nvim",
        priority = 1000,
        lazy = false,
        config = true
    },
    {"numToStr/Comment.nvim",
        config = true,
        event = "BufEnter *.*"
    },
    {"nvim-tree/nvim-web-devicons",
        config = true
    },
    {"vim-airline/vim-airline"},
    {"nvim-lua/plenary.nvim"},
    {"MunifTanjim/nui.nvim"},
    {"nvim-neo-tree/neo-tree.nvim"},
    {"nvim-treesitter/nvim-treesitter",
        event = "BufEnter *.*",
        config = function ()
            require("plugins.config.treesitter")
        end
    },
    {"L3MON4D3/LuaSnip",
        build = "make install_jsregexp"
    },
    {"hrsh7th/cmp-buffer"},
    {"saadparwaiz1/cmp_luasnip"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/nvim-cmp",
        config = function()
            require("plugins/config/cmp")
        end
    },
    {"williamboman/mason.nvim",
        config = true,
    },
    {"hrsh7th/cmp-nvim-lsp"},
    {"folke/neodev.nvim"},
    {"neovim/nvim-lspconfig",
        config = function()
            require("plugins/config/lsp")
        end
    },
    {"nvim-telescope/telescope.nvim",
        cmd = "Telescope"
    },
    {'goolord/alpha-nvim',
        config = function ()
            require("plugins/config/dashboard")
        end
    };
}

