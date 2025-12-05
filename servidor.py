# -*- coding: utf-8 -*-
"""
Servidor Flask para Análise de Sentimentos
Backend para a interface web do Analisador de Sentimentos
"""

from flask import Flask, request, jsonify
from flask_cors import CORS
from transformers import pipeline
import sys
import os

app = Flask(__name__)
CORS(app)  # Permite requisições do navegador

# Variável global para o analisador
analisador = None
MODELO_ID = "pysentimiento/bertweet-pt-sentiment"

def carregar_modelo():
    """Carrega o modelo de IA."""
    global analisador
    try:
        print("🤖 Carregando modelo de Inteligência Artificial...")
        print(f"📦 Modelo: {MODELO_ID}")
        print("⏳ Aguarde, pode levar alguns segundos...")
        
        analisador = pipeline(
            "sentiment-analysis",
            model=MODELO_ID
        )
        
        print("✅ Modelo carregado com sucesso!\n")
        return True
    except Exception as e:
        print(f"❌ Erro ao carregar modelo: {e}")
        return False

@app.route('/')
def index():
    """Serve a página HTML."""
    try:
        with open('analisador_sentimentos.html', 'r', encoding='utf-8') as f:
            return f.read()
    except FileNotFoundError:
        return "Arquivo HTML não encontrado. Certifique-se de que 'analisador_sentimentos.html' está na mesma pasta do servidor.", 404

@app.route('/api/analisar', methods=['POST'])
def analisar():
    """Endpoint para análise de sentimentos."""
    try:
        # Verificar se o modelo está carregado
        if analisador is None:
            return jsonify({
                'erro': 'Modelo ainda não foi carregado. Aguarde alguns segundos.'
            }), 503
        
        # Obter dados da requisição
        data = request.get_json()
        texto = data.get('texto', '').strip()
        
        # Validar entrada
        if not texto:
            return jsonify({
                'erro': 'Texto vazio não pode ser analisado!'
            }), 400
        
        # Realizar análise
        resultado = analisador(texto)[0]
        
        # Retornar resultado
        return jsonify({
            'label': resultado['label'],
            'score': resultado['score']
        })
        
    except Exception as e:
        return jsonify({
            'erro': f'Erro na análise: {str(e)}'
        }), 500

@app.route('/api/status', methods=['GET'])
def status():
    """Verifica se o modelo está carregado."""
    return jsonify({
        'carregado': analisador is not None
    })

if __name__ == '__main__':
    print("="*60)
    print("💙 SERVIDOR DO ANALISADOR DE SENTIMENTOS")
    print("="*60)
    
    # Carregar modelo antes de iniciar o servidor
    if not carregar_modelo():
        print("❌ Não foi possível iniciar o servidor.")
        sys.exit(1)
    
    print("\n🌐 Servidor iniciando...")
    
    # Porta pode ser definida por variável de ambiente (útil para Heroku, Railway, etc)
    port = int(os.environ.get('PORT', 5000))
    host = os.environ.get('HOST', '0.0.0.0')
    debug = os.environ.get('DEBUG', 'True').lower() == 'true'
    
    print(f"📝 Acesse: http://localhost:{port}")
    print("="*60 + "\n")
    
    # Iniciar servidor Flask
    app.run(debug=debug, host=host, port=port)

