return require('packer').startup(function()
	
    use 'wbthomason/packer.nvim'

	use 'junegunn/fzf.vim'
    

    use 'hrsh7th/nvim-compe'
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'folke/lsp-colors.nvim'
    use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
    
    use "lukas-reineke/indent-blankline.nvim"
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

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
