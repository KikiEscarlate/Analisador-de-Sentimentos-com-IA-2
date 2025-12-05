# Script para publicar projeto no GitHub
# Execute: .\publicar-github.ps1

Write-Host "🚀 Publicando projeto no GitHub..." -ForegroundColor Cyan
Write-Host ""

# Verificar se Git está instalado
try {
    git --version | Out-Null
} catch {
    Write-Host "❌ Git não está instalado. Instale o Git primeiro." -ForegroundColor Red
    exit 1
}

# Verificar se já é um repositório Git
if (-not (Test-Path .git)) {
    Write-Host "📦 Inicializando repositório Git..." -ForegroundColor Yellow
    git init
}

# Adicionar todos os arquivos
Write-Host "📝 Adicionando arquivos..." -ForegroundColor Yellow
git add .

# Verificar se há mudanças para commitar
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "ℹ️  Nenhuma mudança para commitar." -ForegroundColor Blue
} else {
    Write-Host "💾 Fazendo commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Analisador de Sentimentos Web"
}

# Solicitar informações do repositório
Write-Host ""
Write-Host "📋 Informações do repositório GitHub:" -ForegroundColor Cyan
$usuario = Read-Host "Digite seu usuário do GitHub"
$repositorio = Read-Host "Digite o nome do repositório"

if ([string]::IsNullOrWhiteSpace($usuario) -or [string]::IsNullOrWhiteSpace($repositorio)) {
    Write-Host "❌ Usuário e repositório são obrigatórios!" -ForegroundColor Red
    exit 1
}

$url = "https://github.com/$usuario/$repositorio.git"

# Verificar se remote já existe
$remote = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "⚠️  Remote 'origin' já existe: $remote" -ForegroundColor Yellow
    $resposta = Read-Host "Deseja substituir? (s/N)"
    if ($resposta -eq "s" -or $resposta -eq "S") {
        git remote remove origin
        git remote add origin $url
    } else {
        Write-Host "ℹ️  Mantendo remote existente." -ForegroundColor Blue
        $url = $remote
    }
} else {
    git remote add origin $url
}

# Renomear branch para main
Write-Host ""
Write-Host "🌿 Configurando branch main..." -ForegroundColor Yellow
git branch -M main 2>$null

# Push para GitHub
Write-Host ""
Write-Host "⬆️  Enviando para GitHub..." -ForegroundColor Yellow
Write-Host "URL: $url" -ForegroundColor Gray
Write-Host ""

try {
    git push -u origin main
    Write-Host ""
    Write-Host "✅ Projeto publicado com sucesso!" -ForegroundColor Green
    Write-Host "🔗 Acesse: https://github.com/$usuario/$repositorio" -ForegroundColor Cyan
} catch {
    Write-Host ""
    Write-Host "❌ Erro ao enviar para GitHub." -ForegroundColor Red
    Write-Host "Verifique:" -ForegroundColor Yellow
    Write-Host "  - Se o repositório existe no GitHub" -ForegroundColor Yellow
    Write-Host "  - Se você está autenticado (pode precisar de token)" -ForegroundColor Yellow
    Write-Host "  - Se a URL está correta" -ForegroundColor Yellow
}

