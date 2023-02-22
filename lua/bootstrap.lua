-- responsavel por carregar o gerenciador de plugins: atualmente usando Packer https://github.com/wbthomason/packer.nvim
local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
    vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", packer_path })
end

vim.cmd.packadd('packer.nvim')

local plugins = require("plugins")
-- lista de plugins a serem verificados e instalados se necessário

-- carrega o packer
local packer = require('packer')
packer.startup(function()

    local plugin_missing = false

	-- percorre a lista de plugins
	for _, plugin in ipairs(plugins) do
		local plugin_name = plugin[1]
		-- define o plugin usando a função 'use' do Packer
        
        -- verifica se o plugin já está instalado
        if packer_plugins ~= nil then
            if not packer_plugins[plugin_name] or not packer_plugins[plugin_name].loaded then
                plugin_missing = true
            end
        end

		use(plugin_name)
	end

    -- verifica se há plugins a serem instalados ou atualizados
    if plugin_missing then
			packer.sync()	
    end
end)
