# Script para remover arquivos desnecessários para GitHub Pages

Write-Host "🗑️  Removendo arquivos desnecessários para GitHub Pages..." -ForegroundColor Yellow
Write-Host ""

# Arquivos que podem ser removidos
$arquivosParaRemover = @(
    "servidor.py",
    "requirements.txt",
    "Procfile",
    "runtime.txt"
)

Write-Host "Os seguintes arquivos serão removidos:" -ForegroundColor Cyan
foreach ($arquivo in $arquivosParaRemover) {
    if (Test-Path $arquivo) {
        Write-Host "  - $arquivo" -ForegroundColor Gray
    }
}

Write-Host ""
$confirmacao = Read-Host "Deseja continuar? (s/N)"

if ($confirmacao -eq "s" -or $confirmacao -eq "S") {
    Write-Host ""
    foreach ($arquivo in $arquivosParaRemover) {
        if (Test-Path $arquivo) {
            Remove-Item $arquivo -Force
            Write-Host "✅ Removido: $arquivo" -ForegroundColor Green
        } else {
            Write-Host "ℹ️  Não encontrado: $arquivo" -ForegroundColor Blue
        }
    }
    
    Write-Host ""
    Write-Host "✅ Limpeza concluída!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Arquivos mantidos:" -ForegroundColor Cyan
    Write-Host "  ✅ index.html (obrigatório)" -ForegroundColor Green
    Write-Host "  ✅ README.md" -ForegroundColor Green
    Write-Host "  ✅ .gitignore" -ForegroundColor Green
    Write-Host ""
    Write-Host "💡 Dica: Você pode fazer commit das mudanças com:" -ForegroundColor Yellow
    Write-Host "   git add ." -ForegroundColor Gray
    Write-Host "   git commit -m 'Remove arquivos do servidor Flask'" -ForegroundColor Gray
} else {
    Write-Host ""
    Write-Host "❌ Operação cancelada." -ForegroundColor Red
}

