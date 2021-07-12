return require('packer').startup(function()

        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'kabouzeid/nvim-lspinstall'
        use 'vim-airline/vim-airline'
        use 'vim-airline/vim-airline-themes'
        use 'morhetz/gruvbox'
        use 'ap/vim-css-color'
        use 'tpope/vim-markdown'
        use { 
                'iamcco/markdown-preview.nvim',
                run = 'cd app && yarn install'  
        }
end)
