-------------------- HELPERS ------------------------------

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local execute = vim.api.nvim_command
local fn = vim.fn

-------------------- PLUGINS ------------------------------

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer in your `opt` pack
cmd [[packadd packer.nvim]]

require('packer').startup(function()

-- Packer can manage itself as an optional plugin
use {'wbthomason/packer.nvim', opt = true}

-- Telescope
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

-- color scheme
use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
})

-- treesitter
use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
use ('nvim-treesitter/playground')

-- misc
use('mbbill/undotree')
use('tpope/vim-fugitive')
use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

-- LSP
use {
	'VonHeikemen/lsp-zero.nvim',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
}

-- prettier
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')

-- statuslines
use {
    'nvim-lualine/lualine.nvim'
}

-- zen mode
use("folke/zen-mode.nvim")

-- file explorer
use { 'nvim-tree/nvim-tree.lua' }

end)
