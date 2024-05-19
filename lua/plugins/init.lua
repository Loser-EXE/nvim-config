return {
    {"ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true},
    {"numToStr/Comment.nvim",
        lazy = false,
        opts = {}
    },
    {"nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons")
        end
    },
    {"vim-airline/vim-airline"},
    {"nvim-lua/plenary.nvim"},
    {"MunifTanjim/nui.nvim"},
    {"nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    {"nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugins/config/treesitter")
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
        config = function()
            require("mason").setup{}
        end
    },
    {"hrsh7th/cmp-nvim-lsp"},
    {"folke/neodev.nvim",
        opts = {}
    },
    {"neovim/nvim-lspconfig",
        config = function()
            require("plugins/config/lsp")
        end
    },
    {"nvim-telescope/telescope.nvim",
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {'goolord/alpha-nvim',
        config = function ()
            require("plugins/config/dashboard")
        end
    };
}

