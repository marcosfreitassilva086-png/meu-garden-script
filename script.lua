-- ==========================================
-- BASE VAZIA - MARIONETEIRO
-- SEM NENHUMA FUNÇÃO ADICIONAL
-- ==========================================

-- ✅ MENSAGEM DE CARGA PRA VOCÊ VER
print("✅ BASE CARREGOU COM SUCESSO!")
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "MEU SCRIPT",
    Text = "Base pronta — adicione funções depois!",
    Duration = 4
})

-- 🔹 SERVIÇOS OBRIGATÓRIOS (NÃO MEXER)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 🔹 DADOS BÁSICOS DO JOGADOR
local Player = Players.LocalPlayer
local Character, Humanoid, RootPart

-- 🔹 ATUALIZA PERSONAGEM AO RESPONDER
local function Atualizar()
    Character = Player.Character or Player.CharacterAdded:Wait()
    Humanoid = Character:WaitForChild("Humanoid")
    RootPart = Character:WaitForChild("HumanoidRootPart")
end
Atualizar()
Player.CharacterAdded:Connect(Atualizar)

-- 🔹 FUNÇÃO DE SEGURANÇA
local function Tentar(funcao)
    pcall(funcao)
end

-- ==========================================
-- >>> AQUI VOCÊ COLOCA O QUE QUISER DEPOIS <<<
-- ==========================================
