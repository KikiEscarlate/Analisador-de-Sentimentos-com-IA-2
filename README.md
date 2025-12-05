# 💙 Analisador de Sentimentos com IA - Interface Web

Interface web moderna para análise de sentimentos usando modelo Transformer pré-treinado em português (BERTweet).

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-3.0+-green.svg)
![Transformers](https://img.shields.io/badge/Transformers-4.35+-orange.svg)

## 📖 Sobre o Projeto

Este projeto converte um analisador de sentimentos em Python (console) para uma interface web moderna e intuitiva. Utiliza o modelo `pysentimiento/bertweet-pt-sentiment` para análise de sentimentos em textos em português, classificando como POSITIVO, NEGATIVO ou NEUTRO.

## 📋 Requisitos

- Python 3.8 ou superior
- pip (gerenciador de pacotes Python)

## 🚀 Como usar

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

- `analisador_sentimentos.html` - Interface web (HTML/CSS/JavaScript)
- `servidor.py` - Servidor Flask com a lógica de análise
- `requirements.txt` - Dependências do projeto
- `i_a_de_cópia_de_nicolau_analisador_de_sentimentos (2).py` - Código original do console

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

## 🚀 Deploy (Opcional)

Para disponibilizar online, você pode usar serviços como:

- **Heroku**: Deploy gratuito de aplicações Flask
- **Railway**: Deploy simples e rápido
- **Render**: Alternativa gratuita ao Heroku
- **PythonAnywhere**: Hospedagem Python gratuita

### Exemplo para Heroku

1. Crie um arquivo `Procfile` com:
   ```
   web: python servidor.py
   ```

2. Crie um arquivo `runtime.txt` com:
   ```
   python-3.11.0
   ```

3. Siga o guia de deploy do Heroku

## 👨‍💻 Autor

Desenvolvido como conversão de um projeto de console para interface web moderna.

## 📄 Licença

Este projeto é de código aberto e está disponível para uso educacional.

---

⭐ Se este projeto foi útil, considere dar uma estrela no GitHub!
