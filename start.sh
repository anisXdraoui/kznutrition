#!/bin/bash

echo "🚀 Démarrage de KZNutrition E-Commerce Platform"
echo ""

# Vérifier si Node.js est installé
if ! command -v node &> /dev/null
then
    echo "❌ Node.js n'est pas installé. Veuillez l'installer depuis https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js version: $(node --version)"
echo ""

# Installer les dépendances du backend
echo "📦 Installation des dépendances du backend..."
cd backend
if [ ! -d "node_modules" ]; then
    npm install
else
    echo "✅ Dépendances du backend déjà installées"
fi
cd ..
echo ""

# Installer les dépendances du frontend
echo "📦 Installation des dépendances du frontend..."
cd frontend
if [ ! -d "node_modules" ]; then
    npm install
else
    echo "✅ Dépendances du frontend déjà installées"
fi
cd ..
echo ""

echo "✅ Installation terminée!"
echo ""
echo "🎯 Pour démarrer l'application:"
echo ""
echo "1. Ouvrez un terminal et exécutez:"
echo "   cd backend && npm start"
echo ""
echo "2. Ouvrez un AUTRE terminal et exécutez:"
echo "   cd frontend && npm start"
echo ""
echo "3. L'application s'ouvrira automatiquement dans votre navigateur!"
echo ""
echo "📌 URLs importantes:"
echo "   - Frontend (Client): http://localhost:3000"
echo "   - Backend (API): http://localhost:5000"
echo "   - Admin Dashboard: http://localhost:3000/admin"
echo ""
echo "💡 Astuce: Consultez le README.md pour plus d'informations"
echo ""
