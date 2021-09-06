return require('packer').startup(function()
	
    use 'wbthomason/packer.nvim'

	use 'junegunn/fzf.vim'
    

    use 'hrsh7th/nvim-compe'
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'folke/lsp-colors.nvim'

    -- don't like the color highlights compared to vscode
    -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    
    use "lukas-reineke/indent-blankline.nvim"
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    --using different gruv theme for now
    use 'morhetz/gruvbox'
    --
    -- use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    
    use 'ap/vim-css-color'
    
    use {
        'xuhdev/vim-latex-live-preview',
        ft = {'tex'}
    }

    use {
        'lervag/vimtex',
        ft = {'tex'}
    }

    
    use 'tpope/vim-markdown'
    use { 
        'iamcco/markdown-preview.nvim',
        ft = { 'markdown' },
        run = 'cd app && yarn install'  
    }

end)
