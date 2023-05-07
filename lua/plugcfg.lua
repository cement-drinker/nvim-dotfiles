-- [[[ Plugin Configs are Stored here ]]] --
-- [[[ Vim Opts are in "init.lua"     ]]] --

-- [[ Colorscheme ]] --
vim.cmd.colorscheme "gruvbox"

-- [[ Neorg ]] --
require('neorg').setup 
{
    load = 
    {
        ["core.defaults"] = {}
    }
}

-- [[ Tree Sitter ]] --
require 'nvim-treesitter.install'.compilers = { 'gcc'}

require"nvim-treesitter.configs".setup
{
	ensure_installed =
	{
		"rust",
		"lua",
		"vim",
		
		-- [ Markup ] --
		"markdown",
		"norg",
		"norg_meta"
	},

	highlight =
	{
		enable = true
	}
}

-- [[ Lualine ]] --
require('lualine').setup 
{
	options = 
	{
		theme = 'auto',
		component_separators = { left = '', right = '' },
		section_separators   = { left = '', right = '' }
	}
}

-- [[ Alpha.Nvim ]] --
require("alpha").setup(require"alpha.themes.startify".config)
