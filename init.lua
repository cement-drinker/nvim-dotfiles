-- [[[ VIM CONFIGS AND REQUIRES FOR EVERYTHING ELSE GO HERE ]]] --
-- [[[ THIS IS FOR READABILITY                              ]]] --

-- [[ LAZY.NVIM BOOTSTRAP ]] --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- [[ LOAD PLUGINS ]] --
local plugs = require("plugins")
require("lazy").setup(plugs)

-- [[ VIM OPTS ]] -- 
vim.cmd.set 
{
	"nu",
	"cursorline",
	"termguicolors"
}

-- [[ PLUGIN CFG ]] --
require("plugcfg")
