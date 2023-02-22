---------------------------
---- Packer Bootstrap -----
---------------------------

-- Instale o gerenciador de pacotes Packer
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'
	use 'terrortylor/nvim-comment'

	-- Verifique se todos os plugins foram instalados e, se necessário, instale-os
	local plugins = packer_plugins
	local plugins_loaded = true
	for plugin_name, plugin_info in pairs(plugins) do
		if not plugin_info.loaded then
			plugins_loaded = false
			break
		end
	end

	if not plugins_loaded then
		packer.install()
		packer.compile()
	end
end)

-- Instalação automática dos plugins
if packer_plugins.loaded == false then
	vim.cmd('autocmd User PackerComplete ++once echo "Plugins carregados com sucesso!"')
	packer.sync()
end
