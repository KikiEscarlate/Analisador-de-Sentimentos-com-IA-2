# Script para resolver "remote origin already exists"

Write-Host "🔍 Verificando remote atual..." -ForegroundColor Cyan
git remote -v

Write-Host ""
Write-Host "Escolha uma opção:" -ForegroundColor Yellow
Write-Host "1. Remover e adicionar novo remote"
Write-Host "2. Atualizar URL do remote existente"
Write-Host "3. Manter como está e fazer push"

$opcao = Read-Host "Digite o número da opção (1-3)"

switch ($opcao) {
    "1" {
        Write-Host ""
        Write-Host "🗑️  Removendo remote existente..." -ForegroundColor Yellow
        git remote remove origin
        
        $usuario = Read-Host "Digite seu usuário do GitHub"
        $repositorio = Read-Host "Digite o nome do repositório"
        
        if ([string]::IsNullOrWhiteSpace($usuario) -or [string]::IsNullOrWhiteSpace($repositorio)) {
            Write-Host "❌ Usuário e repositório são obrigatórios!" -ForegroundColor Red
            exit 1
        }
        
        $url = "https://github.com/$usuario/$repositorio.git"
        Write-Host "➕ Adicionando novo remote..." -ForegroundColor Yellow
        git remote add origin $url
        
        Write-Host "✅ Remote atualizado!" -ForegroundColor Green
        git remote -v
    }
    "2" {
        Write-Host ""
        $usuario = Read-Host "Digite seu usuário do GitHub"
        $repositorio = Read-Host "Digite o nome do repositório"
        
        if ([string]::IsNullOrWhiteSpace($usuario) -or [string]::IsNullOrWhiteSpace($repositorio)) {
            Write-Host "❌ Usuário e repositório são obrigatórios!" -ForegroundColor Red
            exit 1
        }
        
        $url = "https://github.com/$usuario/$repositorio.git"
        Write-Host "🔄 Atualizando URL do remote..." -ForegroundColor Yellow
        git remote set-url origin $url
        
        Write-Host "✅ URL atualizada!" -ForegroundColor Green
        git remote -v
    }
    "3" {
        Write-Host ""
        Write-Host "ℹ️  Mantendo remote atual." -ForegroundColor Blue
        Write-Host "Você pode fazer push normalmente:" -ForegroundColor Cyan
        Write-Host "  git push -u origin main" -ForegroundColor Gray
    }
    default {
        Write-Host "❌ Opção inválida!" -ForegroundColor Red
    }
}

