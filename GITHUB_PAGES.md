# 🚀 Guia: Publicar no GitHub Pages

Este projeto está configurado para funcionar completamente no navegador, sem necessidade de servidor backend. Perfeito para GitHub Pages!

## 📋 Pré-requisitos

- Conta no GitHub
- Repositório criado no GitHub

## 🎯 Passo a Passo

### 1️⃣ Preparar Arquivos

O projeto já está pronto! O arquivo `index.html` é a versão que funciona no GitHub Pages.

### 2️⃣ Publicar no GitHub

#### Opção A: Usando o Script Automático

```powershell
.\publicar-github.ps1
```

#### Opção B: Manualmente

```powershell
git init
git add .
git commit -m "Initial commit: Analisador de Sentimentos Web"
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git
git branch -M main
git push -u origin main
```

### 3️⃣ Ativar GitHub Pages

1. Acesse seu repositório no GitHub
2. Vá em **Settings** (Configurações)
3. Role até a seção **Pages** (no menu lateral esquerdo)
4. Em **Source**, selecione:
   - **Branch**: `main` (ou `master`)
   - **Folder**: `/ (root)` ou `/docs` (se você colocou o HTML em uma pasta docs)
5. Clique em **Save**

### 4️⃣ Acessar seu Site

Após alguns minutos, seu site estará disponível em:

```
https://SEU_USUARIO.github.io/SEU_REPOSITORIO/
```

**Exemplo:**
```
https://nicolas.github.io/analisador-sentimentos-web/
```

## 📁 Estrutura para GitHub Pages

Para funcionar corretamente, você precisa ter:

```
📁 Seu Repositório
├── 📄 index.html          ← Arquivo principal (já criado!)
├── 📄 README.md
├── 📄 .gitignore
└── 📄 outros arquivos...
```

**Importante:** O arquivo principal deve se chamar `index.html` para funcionar no GitHub Pages.

## ⚙️ Como Funciona

Esta versão usa a **API pública do Hugging Face** diretamente do navegador:

- ✅ Não precisa de servidor backend
- ✅ Funciona completamente no navegador
- ✅ Gratuito e sem limites (dentro do razoável)
- ✅ Funciona no GitHub Pages

### Primeira Análise

Na primeira análise, o modelo pode demorar alguns segundos para carregar (o Hugging Face precisa inicializar o modelo). Análises subsequentes são mais rápidas.

## 🔧 Atualizar o Site

Sempre que fizer mudanças:

```powershell
git add .
git commit -m "Descrição das mudanças"
git push
```

O GitHub Pages atualiza automaticamente em alguns minutos.

## ⚠️ Notas Importantes

1. **API do Hugging Face**: Esta versão usa a API pública do Hugging Face. Se houver muitos acessos simultâneos, pode haver rate limiting.

2. **CORS**: A API do Hugging Face permite requisições do navegador, então não há problemas de CORS.

3. **Modelo**: O modelo `pysentimiento/bertweet-pt-sentiment` é carregado sob demanda pela API do Hugging Face.

## 🎨 Personalização

Você pode personalizar:
- Cores e estilos no CSS dentro do `index.html`
- Textos e mensagens
- Layout e design

## 📝 Diferenças entre Versões

- **`index.html`**: Versão para GitHub Pages (funciona sem servidor)
- **`analisador_sentimentos.html`**: Versão original (pode usar servidor local)
- **`servidor.py`**: Servidor Flask (opcional, para uso local)

## 🆘 Problemas Comuns

### Site não aparece
- Aguarde alguns minutos após ativar o GitHub Pages
- Verifique se o arquivo se chama `index.html`
- Verifique se está na branch correta (main/master)

### Erro "Failed to fetch"
- Verifique sua conexão com a internet
- A API do Hugging Face pode estar temporariamente indisponível
- Tente novamente em alguns segundos

### Modelo demora muito
- É normal na primeira análise (modelo precisa carregar)
- Análises subsequentes são mais rápidas

---

🎉 Pronto! Seu analisador de sentimentos está online no GitHub Pages!

