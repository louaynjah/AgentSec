#!/bin/bash
# Script d'installation d'AgentSec

echo "🚀 Installation d'AgentSec..."
echo "=============================="

# Mise à jour
sudo apt update

# Installation des outils de scan
echo "📦 Installation des scanners..."
sudo apt install -y nmap nikto sslscan gobuster wget git

# Installation de WhatWeb
echo "🔧 Installation de WhatWeb..."
cd /opt
sudo git clone https://github.com/urbanadventurer/WhatWeb.git
sudo ln -sf /opt/WhatWeb/whatweb /usr/local/bin/whatweb

# Installation de Hydra
echo "🔑 Installation de Hydra..."
sudo apt install -y hydra

# Installation de WPScan
echo "🎯 Installation de WPScan..."
sudo gem install wpscan

# Création des dossiers
echo "📁 Création des dossiers..."
mkdir -p /tmp/vulnscan
mkdir -p ~/vuln-scanner/data

# Installation Python
echo "🐍 Installation des dépendances Python..."
pip3 install -r requirements.txt

# Téléchargement des wordlists
echo "📚 Téléchargement des wordlists..."
wget -O /tmp/vulnscan/wordlist.txt https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt

echo "✅ Installation terminée !"
echo "📝 Prochaines étapes :"
echo "   1. Lancer n8n: n8n start"
echo "   2. Lancer Streamlit: streamlit run app.py"
