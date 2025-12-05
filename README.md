# 💙 Analisador de Sentimentos com IA - Interface Web

Interface web moderna para análise de sentimentos usando modelo Transformer pré-treinado em português (BERTweet).

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-3.0+-green.svg)
![Transformers](https://img.shields.io/badge/Transformers-4.35+-orange.svg)

## 📖 Sobre o Projeto

Este projeto converte um analisador de sentimentos em Python (console) para uma interface web moderna e intuitiva. Utiliza o modelo `pysentimiento/bertweet-pt-sentiment` para análise de sentimentos em textos em português, classificando como POSITIVO, NEGATIVO ou NEUTRO.

## 🌐 Versões Disponíveis

Este projeto possui **duas versões**:

### 🚀 Versão GitHub Pages (Recomendada - Sem Requisitos!)

**Funciona completamente no navegador**, sem necessidade de servidor ou instalação!

- ✅ Usa a API pública do Hugging Face
- ✅ Funciona diretamente no GitHub Pages
- ✅ Sem necessidade de Python ou servidor
- ✅ Veja o guia completo: [`GITHUB_PAGES.md`](GITHUB_PAGES.md)

**Para usar:** Basta abrir o arquivo `index.html` no navegador ou publicar no GitHub Pages!

### 💻 Versão com Servidor Local (Opcional)

**Requisitos:**
- Python 3.8 ou superior
- pip (gerenciador de pacotes Python)

## 🚀 Como usar (Versão com Servidor)

### 1. Instalar dependências

Abra o terminal na pasta do projeto e execute:

```bash
pip install -r requirements.txt
```

**Nota:** A primeira instalação pode demorar alguns minutos, pois precisa baixar o modelo de IA (~500MB).

### 2. Iniciar o servidor

Execute o servidor Flask:

```bash
python servidor.py
```

Você verá uma mensagem indicando que o modelo está sendo carregado. Aguarde até aparecer:

```
✅ Modelo carregado com sucesso!
🌐 Servidor iniciando...
📝 Acesse: http://localhost:5000
```

### 3. Abrir a interface web

Abra seu navegador e acesse:

```
http://localhost:5000
```

Ou abra diretamente o arquivo `analisador_sentimentos.html` no navegador (mas certifique-se de que o servidor está rodando).

### 4. Usar o analisador

1. Digite o texto que deseja analisar no campo de texto
2. Clique em "Analisar Sentimento"
3. Aguarde alguns segundos para o resultado aparecer
4. Veja o sentimento identificado (POSITIVO, NEGATIVO ou NEUTRO) e o nível de confiança

## 📁 Estrutura de arquivos

- `index.html` - **Versão para GitHub Pages** (funciona sem servidor)
- `analisador_sentimentos.html` - Interface web original (pode usar servidor)
- `servidor.py` - Servidor Flask com a lógica de análise (opcional)
- `requirements.txt` - Dependências do projeto (apenas para versão com servidor)
- `i_a_de_cópia_de_nicolau_analisador_de_sentimentos (2).py` - Código original do console
- `GITHUB_PAGES.md` - Guia completo para publicar no GitHub Pages

## 🔧 Solução de problemas

### Erro "Failed to fetch"
- Certifique-se de que o servidor está rodando (`python servidor.py`)
- Verifique se está acessando `http://localhost:5000`

### Erro ao instalar dependências
- Certifique-se de ter Python 3.8+ instalado
- Tente atualizar o pip: `python -m pip install --upgrade pip`

### Modelo demora muito para carregar
- É normal na primeira execução, pois o modelo precisa ser baixado
- O modelo tem aproximadamente 500MB
- Certifique-se de ter conexão com a internet na primeira execução

## 💡 Dicas

- O modelo funciona melhor com textos em português
- Textos mais longos podem demorar um pouco mais para analisar
- Você pode usar Ctrl+Enter no campo de texto para analisar rapidamente

## 📦 Publicando no GitHub

### 1. Criar repositório no GitHub

1. Acesse [GitHub](https://github.com) e faça login
2. Clique em "New repository" (ou "Novo repositório")
3. Escolha um nome para o repositório (ex: `analisador-sentimentos-web`)
4. Adicione uma descrição
5. Escolha se será público ou privado
6. **NÃO** marque "Initialize with README" (já temos um)
7. Clique em "Create repository"

### 2. Conectar repositório local ao GitHub

No terminal, execute os seguintes comandos:

```bash
# Inicializar repositório Git (se ainda não foi feito)
git init

# Adicionar todos os arquivos
git add .

# Fazer primeiro commit
git commit -m "Initial commit: Analisador de Sentimentos Web"

# Adicionar repositório remoto (substitua SEU_USUARIO e SEU_REPOSITORIO)
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

# Enviar para o GitHub
git branch -M main
git push -u origin main
```

### 3. Estrutura do Repositório

O repositório inclui:
- ✅ Interface web completa (`analisador_sentimentos.html`)
- ✅ Servidor Flask (`servidor.py`)
- ✅ Dependências (`requirements.txt`)
- ✅ Documentação (`README.md`)
- ✅ Código original (`i_a_de_cópia_de_nicolau_analisador_de_sentimentos (2).py`)
- ✅ `.gitignore` configurado

## 🚀 Deploy Online

### GitHub Pages (Recomendado - Gratuito!)

A versão `index.html` funciona perfeitamente no GitHub Pages sem necessidade de servidor.

**Veja o guia completo:** [`GITHUB_PAGES.md`](GITHUB_PAGES.md)

**Passos rápidos:**
1. Publique o código no GitHub
2. Vá em Settings → Pages
3. Selecione branch `main` e pasta `/ (root)`
4. Seu site estará em `https://SEU_USUARIO.github.io/SEU_REPOSITORIO/`

### Outras Opções de Deploy

Para a versão com servidor Flask, você pode usar:

- **Heroku**: Deploy gratuito de aplicações Flask
- **Railway**: Deploy simples e rápido
- **Render**: Alternativa gratuita ao Heroku
- **PythonAnywhere**: Hospedagem Python gratuita

Os arquivos `Procfile` e `runtime.txt` já estão incluídos para facilitar o deploy.

## 👨‍💻 Autor

Desenvolvido como conversão de um projeto de console para interface web moderna.

## 📄 Licença

Este projeto é de código aberto e está disponível para uso educacional.

---

⭐ Se este projeto foi útil, considere dar uma estrela no GitHub!
