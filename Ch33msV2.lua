-- Loadstring Seguro com mensagens
local url = "https://raw.githubusercontent.com/enzinncatrip/C33msSide/main/ch33msgui.lua"

local success, response = pcall(function()
    return game:HttpGetAsync(url, true)
end)

if success then
    local loadSuccess, loadError = pcall(function()
        loadstring(response)()
    end)
    
    if loadSuccess then
        print("✅ Ch33msGUI carregada com sucesso!")
    else
        warn("❌ Erro ao executar a GUI: " .. tostring(loadError))
    end
else
    warn("❌ Erro ao baixar a GUI do GitHub: " .. tostring(response))
end
