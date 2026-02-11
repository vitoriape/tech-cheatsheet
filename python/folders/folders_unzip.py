import os
import zipfile

# Caminho para a pasta de Downloads
pasta_downloads = os.path.expanduser("~/Downloads")

# Função para extrair arquivos zip
def extrair_arquivos_zip(pasta):
    # Iterar sobre todos os arquivos na pasta
    for arquivo in os.listdir(pasta):
        caminho_arquivo = os.path.join(pasta, arquivo)
        # Verificar se é um arquivo zip
        if zipfile.is_zipfile(caminho_arquivo):
            try:
                with zipfile.ZipFile(caminho_arquivo, 'r') as zip_ref:
                    # Pasta de extração (mesmo nome que o arquivo zip)
                    pasta_destino = os.path.join(pasta, os.path.splitext(arquivo)[0])
                    os.makedirs(pasta_destino, exist_ok=True)
                    zip_ref.extractall(pasta_destino)
                    print(f"Arquivo extraído: {arquivo} em {pasta_destino}")
            except Exception as e:
                print(f"Erro ao extrair {arquivo}: {e}")

# Chamar a função para extrair os arquivos
extrair_arquivos_zip(pasta_downloads)
