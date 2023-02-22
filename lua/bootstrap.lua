---------------------------
---- Packer Bootstrap -----
---------------------------
local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
    vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", packer_path })
end

vim.cmd.packadd('packer.nvim')

-- lista de plugins a serem verificados e instalados se necessário
local plugins = require("plugins")

-- carrega o packer
local packer = require('packer')
packer.startup(function()
	-- percorre a lista de plugins
	for _, plugin in ipairs(plugins) do
		local plugin_name = plugin[1]
		-- define o plugin usando a função 'use' do Packer
		use(plugin_name)
	end

end)

-- verifica se há plugins a serem instalados ou atualizados
if packer_status ~= nil then
	for plugin, status in pairs(packer_status) do
		if status == "not installed" then
			require('packer').sync()	
		end
	end
end
