# 🚀 Guia Rápido: Publicar no GitHub

## Passo a Passo

### 1️⃣ Criar Repositório no GitHub

1. Acesse https://github.com e faça login
2. Clique no botão **"+"** no canto superior direito → **"New repository"**
3. Preencha:
   - **Repository name**: `analisador-sentimentos-web` (ou outro nome)
   - **Description**: "Interface web para análise de sentimentos com IA"
   - Escolha **Public** ou **Private**
   - **NÃO** marque "Add a README file" (já temos um)
4. Clique em **"Create repository"**

### 2️⃣ Preparar e Enviar Código

Abra o PowerShell ou Terminal na pasta do projeto e execute:

```powershell
# 1. Inicializar Git (se ainda não foi feito)
git init

# 2. Adicionar todos os arquivos
git add .

# 3. Fazer commit inicial
git commit -m "Initial commit: Analisador de Sentimentos Web"

# 4. Adicionar repositório remoto (SUBSTITUA com seu usuário e nome do repositório)
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

# Exemplo:
# git remote add origin https://github.com/nicolas/analisador-sentimentos-web.git

# 5. Renomear branch para main (se necessário)
git branch -M main

# 6. Enviar para o GitHub
git push -u origin main
```

### 3️⃣ Verificar no GitHub

1. Acesse seu repositório no GitHub
2. Você deve ver todos os arquivos:
   - ✅ `analisador_sentimentos.html`
   - ✅ `servidor.py`
   - ✅ `requirements.txt`
   - ✅ `README.md`
   - ✅ `.gitignore`
   - ✅ Outros arquivos

### 4️⃣ Próximos Passos (Opcional)

#### Adicionar Descrição e Tópicos

No GitHub, você pode:
- Adicionar uma descrição mais detalhada
- Adicionar tópicos: `python`, `flask`, `nlp`, `sentiment-analysis`, `portuguese`

#### Criar Releases

Quando fizer melhorias, você pode criar releases:
1. Vá em **"Releases"** → **"Create a new release"**
2. Escolha uma tag (ex: `v1.0.0`)
3. Adicione notas sobre as mudanças

## 📝 Comandos Git Úteis

```powershell
# Ver status dos arquivos
git status

# Ver histórico de commits
git log

# Adicionar mudanças e fazer commit
git add .
git commit -m "Descrição das mudanças"
git push

# Ver repositórios remotos
git remote -v
```

## ⚠️ Problemas Comuns

### Erro: "remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git
```

### Erro: "failed to push"
- Verifique se você está autenticado no GitHub
- Pode precisar usar token de acesso pessoal ao invés de senha

### Esqueceu arquivos no commit?
```powershell
git add .
git commit --amend --no-edit
git push --force
```

---

🎉 Pronto! Seu projeto está no GitHub!

