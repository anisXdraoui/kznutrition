# KZNutrition E-Commerce Platform

Site e-commerce complet pour suppléments de nutrition sportive avec interface admin professionnelle.

## 🚀 Fonctionnalités

### Frontend (Client)
- **Page d'accueil moderne** avec hero section, catégories, produits populaires
- **Boutique avec filtres avancés** : catégorie, marque, prix, recherche
- **Système de panier** persistant avec localStorage
- **Processus de commande complet** avec formulaire de livraison
- **Interface responsive** optimisée mobile et desktop
- **Design noir et jaune** professionnel et moderne

### Backend (Admin)
- **Dashboard avec statistiques** :
  - Chiffre d'affaires total et évolution
  - Commandes actives
  - Produits en stock faible
  - Graphique des ventes (30 derniers jours)
  - Top 5 des meilleures ventes
  
- **Gestion des produits** :
  - Ajout, modification, suppression
  - Upload d'images
  - Gestion du stock avec alertes automatiques
  - Badges (Nouveau, Meilleure vente, Promotion)
  - Recherche et filtres
  
- **Gestion des commandes** :
  - Liste de toutes les commandes
  - Changement de statut (En traitement, Expédition, Expédié, Annulé)
  - Détails complets de chaque commande
  - Mise à jour automatique du stock

### Technique
- **Backend** : Node.js + Express + SQLite
- **Frontend** : React + React Router + Tailwind CSS
- **API REST** complète
- **Base de données SQLite** avec données de démonstration

## 🌐 Déploiement en Ligne (GRATUIT)

Votre site peut être mis en ligne **gratuitement** en 15 minutes!

### 📚 3 Guides disponibles:

1. **GUIDE_ULTRA_SIMPLE.txt** ← Commencez ici si c'est votre première fois
   - Explications pas à pas pour débutants
   - Aucune connaissance technique requise
   - Format questions/réponses

2. **GUIDE_DEPLOIEMENT.txt** ← Guide complet
   - Toutes les étapes détaillées
   - Solutions aux problèmes courants
   - Conseils pour optimiser

3. **README.md** (ce fichier) ← Référence technique
   - Pour développeurs
   - Architecture et API

### 🚀 Déploiement rapide

**Backend (API):** Render.com (gratuit)
- Base de données PostgreSQL incluse
- Auto-déploiement depuis GitHub
- URL: `https://votre-app.onrender.com`

**Frontend (Site):** Vercel (gratuit)
- Déploiement en 1 clic
- HTTPS automatique
- URL: `https://votre-app.vercel.app`

### ⚡ Résumé en 4 étapes

1. **GitHub:** Uploadez votre code
2. **Render:** Créez DB PostgreSQL + Web Service
3. **Vercel:** Déployez le frontend
4. **✅ En ligne!**

Consultez `GUIDE_ULTRA_SIMPLE.txt` pour les détails!

---

## 📦 Installation

### Prérequis
- Node.js (v14 ou supérieur)
- npm ou yarn

### Installation du Backend

1. Ouvrez un terminal et naviguez vers le dossier backend :
```bash
cd backend
```

2. Installez les dépendances :
```bash
npm install
```

3. Démarrez le serveur :
```bash
npm start
```

Le serveur démarre sur http://localhost:5000

### Installation du Frontend

1. Ouvrez un **nouveau terminal** et naviguez vers le dossier frontend :
```bash
cd frontend
```

2. Installez les dépendances :
```bash
npm install
```

3. Démarrez l'application React :
```bash
npm start
```

L'application s'ouvre automatiquement sur http://localhost:3000

## 🎯 Utilisation

### Pour les Clients

1. **Page d'accueil** (http://localhost:3000)
   - Parcourez les catégories et produits populaires
   - Cliquez sur "Voir les nouveautés" ou "Boutique" dans le menu

2. **Boutique** (http://localhost:3000/boutique)
   - Filtrez par catégorie, marque, prix
   - Recherchez des produits spécifiques
   - Ajoutez des produits au panier

3. **Panier** (http://localhost:3000/panier)
   - Modifiez les quantités
   - Remplissez le formulaire de livraison
   - Choisissez votre moyen de paiement
   - Confirmez la commande

### Pour les Administrateurs

1. **Accédez à l'admin** (http://localhost:3000/admin)

2. **Dashboard** :
   - Visualisez les statistiques en temps réel
   - Consultez le graphique des ventes
   - Identifiez les produits en stock faible

3. **Gestion des produits** :
   - Cliquez sur "Nouveau Produit" pour ajouter un produit
   - Utilisez les boutons d'édition/suppression sur chaque produit
   - Le stock s'affiche avec des couleurs :
     - 🟢 Vert : Stock suffisant (>10 unités)
     - 🟠 Orange : Stock faible (≤10 unités)
     - 🔴 Rouge : Rupture de stock (0 unités)

4. **Gestion des commandes** :
   - Consultez toutes les commandes
   - Changez le statut via le menu déroulant
   - Le stock se met à jour automatiquement

## 🗄️ Structure de la Base de Données

### Produits
- ID, nom, marque, catégorie
- Prix, ancien prix (pour les promotions)
- Description, image
- Note et nombre d'avis
- Stock (avec alertes automatiques)
- Goût, taille
- Badges (nouveau, meilleure vente, promotion)

### Commandes
- Informations client (nom, téléphone)
- Adresse de livraison (wilaya, commune, adresse complète)
- Méthode de paiement
- Articles commandés (JSON)
- Montants (sous-total, livraison, total)
- Statut (En traitement, Expédition, Expédié, Annulé)

### Statistiques
- Historique des ventes par jour
- Calcul automatique du chiffre d'affaires
- Comptage des commandes

## 🎨 Personnalisation

### Couleurs
Le thème noir et jaune peut être personnalisé dans :
- `frontend/tailwind.config.js` pour les couleurs Tailwind
- `frontend/src/index.css` pour les styles globaux

### Logo
Remplacez le logo dans `frontend/src/components/Header.js`

### Produits de démonstration
Les produits de démonstration sont créés automatiquement au premier lancement.
Pour les modifier, éditez la fonction `addSampleProducts()` dans `backend/server.js`

## 🔧 Configuration

### Port du backend
Par défaut : 5000
Pour changer : modifiez `PORT` dans `backend/server.js`

### Port du frontend
Par défaut : 3000
Pour changer : créez un fichier `.env` dans frontend avec :
```
PORT=3001
```

### Base de données
Le fichier SQLite (`kznutrition.db`) est créé automatiquement dans le dossier backend.

## 📝 API Endpoints

### Produits
- `GET /api/products` - Liste des produits (avec filtres)
- `GET /api/products/:id` - Détails d'un produit
- `POST /api/products` - Créer un produit
- `PUT /api/products/:id` - Mettre à jour un produit
- `DELETE /api/products/:id` - Supprimer un produit
- `GET /api/categories` - Liste des catégories
- `GET /api/brands` - Liste des marques

### Commandes
- `GET /api/orders` - Liste des commandes
- `GET /api/orders/:id` - Détails d'une commande
- `POST /api/orders` - Créer une commande
- `PATCH /api/orders/:id/status` - Mettre à jour le statut

### Statistiques
- `GET /api/stats/dashboard` - Statistiques du dashboard

## 🚨 Gestion des Stocks

Le système gère automatiquement les stocks :

1. **Alertes visuelles** :
   - Stock > 10 : Badge vert "En stock"
   - Stock ≤ 10 : Badge orange "Stock faible"
   - Stock = 0 : Badge rouge "Rupture de stock"

2. **Déduction automatique** :
   - Lors de la création d'une commande, le stock est automatiquement déduit
   - Si le stock est insuffisant, la commande est rejetée

3. **Dashboard admin** :
   - Section "Stock Faible" affiche le nombre de produits ≤ 10 unités
   - Lien vers "Besoin Réappro" pour voir les produits concernés

## 🛡️ Sécurité

**Important** : Cette version est destinée au développement local.

Pour une utilisation en production, ajoutez :
- Authentification admin (JWT, sessions)
- Validation des données côté serveur
- Protection CORS appropriée
- HTTPS
- Variables d'environnement pour les secrets
- Upload d'images sécurisé avec validation

## 📱 Support Mobile

L'interface est entièrement responsive :
- Menu hamburger sur mobile
- Grille de produits adaptative
- Formulaires optimisés pour mobile
- Dashboard admin consultable sur tablette

## 🎯 Prochaines Fonctionnalités

Suggestions pour améliorer le site :
- [ ] Système d'authentification utilisateur
- [ ] Historique des commandes pour les clients
- [ ] Système de reviews et notes
- [ ] Programme de fidélité
- [ ] Code promo et réductions
- [ ] Paiement en ligne (CCP, Baridi, etc.)
- [ ] Intégration API de livraison (Yalidine)
- [ ] Notifications par email/SMS
- [ ] Export des données (Excel, PDF)
- [ ] Multi-langues (FR/AR/EN)

## 🆘 Dépannage

### Le backend ne démarre pas
- Vérifiez que le port 5000 n'est pas utilisé
- Vérifiez que Node.js est installé : `node --version`
- Supprimez `node_modules` et réinstallez : `rm -rf node_modules && npm install`

### Le frontend ne démarre pas
- Vérifiez que le port 3000 n'est pas utilisé
- Vérifiez les dépendances : `npm install`
- Videz le cache : `npm start -- --reset-cache`

### Les images ne s'affichent pas
- Vérifiez que le serveur backend est démarré
- Vérifiez le dossier `backend/uploads`
- Pour les produits de démo, les images utilisent Unsplash (connexion internet requise)

### Erreur "Cannot find module"
- Exécutez `npm install` dans le dossier concerné
- Vérifiez que tous les fichiers sont bien présents

## 📄 Licence

Ce projet est créé pour KZNutrition. Tous droits réservés.

## 👨‍💻 Support

Pour toute question ou assistance, contactez l'équipe de développement.

---

**Bon développement ! 💪🏋️**
