-- ==========================================
-- BASE SCRIPT: MARIONETEIRO
-- SEM FUNÇÕES ADICIONADAS — COLOQUE DEPOIS
-- ==========================================
print("✅ BASE CARREGOU!")

-- 🔹 SERVIÇOS OBRIGATÓRIOS (NÃO MEXER AQUI)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 🔹 DADOS DO JOGADOR
local Player = Players.LocalPlayer

-- 🔹 ESPERA CARREGAR O PERSONAGEM
local Character, Humanoid, RootPart
local function AtualizarPersonagem()
    Character = Player.Character or Player.CharacterAdded:Wait()
    Humanoid = Character:WaitForChild("Humanoid")
    RootPart = Character:WaitForChild("HumanoidRootPart")
end
AtualizarPersonagem()

-- 🔹 ATUALIZA QUANDO RESPONDER
Player.CharacterAdded:Connect(AtualizarPersonagem)

-- 🔹 FUNÇÃO DE SEGURANÇA (NÃO DEIXA QUEBRAR)
local function TentarExecutar(funcao)
    local ok, erro = pcall(funcao)
    if not ok then
        warn("⚠️ ERRO: "..tostring(erro))
    end
end

-- ==========================================
-- >>> COLOQUE SUAS FUNÇÕES ABAIXO DEPOIS <<<
-- ==========================================
