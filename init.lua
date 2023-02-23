-- carrega minha configurações padrão 
-- A ideia é carregar as cofigurações do nvim sem dependencia do plugins nesse ponto 
require("settings")

-- carrego meus atalhos padrões
-- São carregado apenas atalhos do proprio nvim puro sem plugins
require("bindkeys")

-- Verifique se o usuário está executando o nerd em uma versão suportada do Neovim antes de tentar carregar qualquer coisa
if vim.fn.has("nvim-0.7.0") ~= 1 then
    local message = table.concat({
        "Você está usando uma versão não suportada do Neovim.",
        "nerd nvim e muitos de seus plug-ins requerem pelo menos a versão 0.7.0 para funcionar conforme o esperado.",
        "Considere atualizar se você tiver problemas.",
        "Provavelmente você está no ubuntu ou derivados por está com um versão anterior, tente esses comandos",
        "sudo add-apt-repository ppa:neovim-ppa/unstable",
        "sudo apt-get update",
        "sudo apt-get install neovim",
    }, "\n")
    vim.notify(message, vim.log.levels.ERROR)
end

-- responsavel por carregar o gerenciador de plugins: atualmente usando Packer https://github.com/wbthomason/packer.nvim
require("bootstrap")
