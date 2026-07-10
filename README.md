# 🧪 TestLab Academy - Bienvenue dans le Futur du Test Logiciel!

> *"Un bon testeur n'est pas celui qui trouve des bugs. C'est celui qui les trouve AVANT tout le monde, qui les documente précisément, et qui aide son équipe à s'améliorer constamment."*

---

## 📢 Table des Matières

1. [🚀 Démarrage Rapide](#-démarrage-rapide)
2. [💡 Pourquoi Squash TM et Mantis BT?](#-pourquoi-ces-outils)
3. [📚 Concepts Fondamentaux](#-concepts-fondamentaux)
4. [🛠️ Installation Détaillée](#️-installation-détaillée)
5. [👨‍💻 Tutoriels Pratiques](#-tutoriels-pratiques)
6. [🔗 Intégration Squash-Mantis](#-intégration-squash-mantis)
7. [📊 Votre Évolution Professionnelle](#-votre-évolution-professionnelle)
8. [🆘 Dépannage](#-dépannage)

---

## 🚀 Démarrage Rapide

### ⚡ L'installation la plus simple (30 secondes)

```bash
# 1. Clonez le projet
git clone [votre-repo] testlab
cd testlab

# 2. Lancez tout avec une seule commande
docker-compose up -d

# 3. Patientez 60 secondes (les bases de données s'initialisent)

# 4. C'est fini! Accédez aux applications:
#    - Squash TM:    http://localhost:8080/squash
#    - Mantis BT:    http://localhost:8989
```

### ✅ Vérifier que tout fonctionne

```bash
# Voir l'état des conteneurs
docker-compose ps

# Vérifier les logs (si un service refuse de démarrer)
docker-compose logs squash-tm
docker-compose logs mantis-bt
```

---

## 💡 Pourquoi ces Outils? Le Contexte Actuel

### 🌍 L'Évolution du Métier de Testeur

Vous entrez dans le métier de testeur à une époque charnière. Le secteur du test logiciel est en pleine transformation:

#### **Hier (années 2000-2010)**
- Tests manuels uniquement
- Documentation massive sur papier/Word
- Communication lente entre équipes
- Découverte des bugs en production (coûteux!)

#### **Aujourd'hui (2025)**
- **Approche hybride**: Tests manuels + automatisés
- **Gestion intégrée**: Exigences → Tests → Bugs → Corrections
- **Communication en temps réel**: Toute l'équipe connectée
- **Qualité continue**: Les bugs sont trouvés AVANT la production

#### **Demain (vos 10 prochaines années de carrière)**
- **IA pour la création de tests** (génération automatique de cas de test)
- **Monitoring continu** des applications en production
- **Testing as Code** (les tests sont du vrai code)
- **Testeurs = Gardiens de la Qualité** (rôle stratégique en équipe)

### 💼 Impact sur votre Salaire et Carrière

| Compétences | Salaire Junior | Carrière Possible |
|---|---|---|
| Tests manuels basiques | 25-28k€ | Testeur manuel local |
| Outils + Méthodologie | 32-38k€ | Lead Testeur / QA |
| Automatisation + Architecture | 42-52k€ | QA Manager / Expert |
| IA + DevOps + Stratégie | 55k€+ | Directeur QA / Innovateur |

**Vous avez le choix!** Ce projet vous ouvre les portes.

---

## 📚 Concepts Fondamentaux

### 🎯 Squash TM: Le "Chef d'Orchestre" du Test

**En une phrase**: C'est votre cahier des charges numérique pour les tests.

**Rôles**:
- 📋 **Gestionnaire d'Exigences**: Stocke QUOI tester
- 📝 **Éditeur de Cas de Test**: Décrit COMMENT tester
- 📊 **Suivi de Campagne**: Quand tester et avec qui
- 🔗 **Connecteur de Bugs**: Lie automatiquement les anomalies à Mantis

**Workflow typique**:
```
Exigence (Feature à tester)
    ↓
Cas de Test (Scénario détaillé)
    ↓
Campagne de Test (Planification)
    ↓
Exécution (Vous testez!)
    ↓
Résultat (Pass/Fail) + Anomalie détectée
    ↓
Liaison Mantis (Bug créé automatiquement)
```

### 🐛 Mantis BT: Le "Registre" des Anomalies

**En une phrase**: C'est votre gestionnaire de problèmes professionnel.

**Rôles**:
- 🔴 **Signalement de Bugs**: Vous trouvez un bug → vous le déclarez
- 📈 **Suivi de Résolution**: Observer la correction
- 👥 **Collaboration**: Discuter avec développeurs/chef de projet
- 📊 **Rapports**: Analyser les tendances (quel module a le plus de bugs?)

**Workflow typique**:
```
Vous découvrez un bug lors d'un test
    ↓
Créez une anomalie dans Mantis
    ↓
Décrivez le contexte (étapes à reproduire, environnement)
    ↓
Assignez au développeur approprié
    ↓
Suivez: Assigné → En cours → Résolu → Fermé
```

### 🔗 Pourquoi les Lier?

Imaginez cette conversation:

**Scénario sans intégration** (l'enfer):
- *Testeur*: "Il y a un bug dans la page login!"
- *Développeur*: "C'est quel cas de test?"
- *Testeur*: "Euh... j'ai pas noté..."
- *Chef de projet*: "C'est dans quel sprint?"
- *Tout le monde*: 😤

**Scénario avec intégration** (le rêve):
- *Système Squash*: L'anomalie est AUTOMATIQUEMENT liée au cas de test
- *Système Squash*: Le bug s'ajoute automatiquement dans Mantis
- *Développeur*: Reçoit une notification + contexte complet
- *Chef de projet*: Voit l'impact en temps réel
- *Tout le monde*: 😊

---

## 🛠️ Installation Détaillée

### Prérequis

#### **Windows & Mac**
- **Docker Desktop** (gratuit): https://www.docker.com/products/docker-desktop
- 4GB RAM minimum dédié à Docker
- 10GB d'espace disque libre

#### **Linux**
```bash
# Installation Docker
sudo apt-get update
sudo apt-get install docker.io docker-compose

# Ajouter votre utilisateur au groupe docker
sudo usermod -aG docker $USER
```

### Étape 1: Vérifier Docker

```bash
# Vérifier que Docker fonctionne
docker --version
docker-compose --version

# Résultat attendu:
# Docker version 25.0.0+
# Docker Compose version 2.20.0+
```

### Étape 2: Télécharger/Cloner le Projet

**Option A: Avec Git** (recommandé)
```bash
git clone https://github.com/geoffreydelumeau/demo-docker-squashTM-mantisBT
cd demo-docker-squashTM-mantisBT
```

**Option B: Sans Git**
1. Téléchargez le ZIP depuis GitHub
2. Décompressez-le
3. Ouvrez une console dans le dossier

### Étape 3: Préparer la Structure

```bash
# Créer les répertoires nécessaires
mkdir -p squash-tm/config squash-tm/logs squash-tm/attachments
mkdir -p mantis/config mantis/plugins mantis/custom mantis/logs
mkdir -p mariadb/squash-init mariadb/squash-logs
mkdir -p mariadb/mantis-init mariadb/mantis-logs

# Créer un fichier .env pour les variables sensibles (optionnel)
cat > .env << EOF
# Squash TM
SQUASH_DB_PASSWORD=squash_password
SQUASH_DB_USER=squash_user

# Mantis BT
MANTIS_DB_PASSWORD=mantisbt
MANTIS_DB_USER=mantisbt

# Générale
TZ=Europe/Paris
EOF
```

### Étape 4: Lancer les Conteneurs

```bash
# Démarrer les services en arrière-plan
docker-compose up -d

# Suivre l'initialisation (dans un nouveau terminal)
docker-compose logs -f

# Attendre jusqu'à voir:
# mariadb-squash | 2025-... ready for connections
# mariadb-mantis | 2025-... ready for connections
# squash-tm | 2025-... Server started on port 8080
```

### Étape 5: Premiers Accès

Attendez **60-90 secondes** après le démarrage (les bases s'initialisent).

#### Squash TM
- **URL**: http://localhost:8080/squash
- **IMPORTANT**: Lors de votre première connexion vous allez devoir paramétrer Squash pour qu'il puisse communiquer avec sa base de donnée MariaDB. Indiquez les valeurs suivantes dans les champs :
-- Hostname (for Database Server) : mariadb-mantis
-- Username (for Database) : mantisbt
-- Password (for Database) : mantisbt
-- Database name (for Database) : bugtracker
-- Admin username (to create database if required): root
-- Admin password (to create database if required) : root
-- Puis cliquez sur le bouton "Install/Upgrade database"
-- Sur la nouvelle page, tout en bas, cliquez sur "Continue" pour accéder à la page de login. Utilisez les identifiants suivant :
- **Identifiant**: `admin`
- **Mot de passe**: `admin`
- **IMPORTANT**: Changez ce mot de passe immédiatement! (Paramètres → Mon Compte)

#### Mantis BT
- **URL**: http://localhost:8989
- **Identifiant**: `administrator`
- **Mot de passe**: `root`
- **IMPORTANT**: Changez ce mot de passe immédiatement! (Admin → Gestion des Utilisateurs)

---

## 👨‍💻 Tutoriels Pratiques

### Tutorial 1: Créer une Exigence dans Squash TM

**Objectif**: Comprendre comment exprimer "ce qu'on doit tester"

**Scénario**: Vous testez une **application e-commerce**. Vous devez décrire le test du panier d'achat.

#### Étape A: Accéder à la Gestion des Exigences

1. Connexion à Squash TM (`admin/admin`)
2. Cliquez sur **Exigences** (menu de gauche)
3. Cliquez sur **+ Nouveau Dossier** (si c'est la première fois)
4. Nommez-le: `E-Commerce - Phase 1`

#### Étape B: Créer une Exigence

1. Clic-droit sur le dossier → **Créer une Exigence**
2. Remplissez:
   - **Référence**: `REQ-001`
   - **Titre**: `Utilisateur peut ajouter un article au panier`
   - **Description**:
     ```
     En tant que client,
     Je veux pouvoir ajouter un article au panier,
     Pour qu'il soit disponible lors de l'achat.
     
     Critères d'acceptation:
     - L'article apparaît dans le panier
     - La quantité augmente
     - Le total se recalcule
     ```
   - **Type**: `Fonctionnalité`
   - **Priorité**: `Haute`

3. Cliquez sur **Créer**

**Bravo!** 🎉 Vous venez de créer votre première exigence!

---

### Tutorial 2: Créer un Cas de Test dans Squash TM

**Objectif**: Décrire précisément les étapes pour tester une exigence

**Suite du scenario**: Vous créez les cas de test pour `REQ-001`

#### Étape A: Accéder aux Cas de Test

1. Squash TM → **Cas de Test** (menu de gauche)
2. **+ Nouveau Dossier** → `E-Commerce - Cas de Test`

#### Étape B: Créer le Cas de Test

1. Clic-droit sur le dossier → **Créer un Cas de Test**
2. Remplissez:
   - **Référence**: `TC-001`
   - **Titre**: `Vérifier l'ajout d'un article au panier`
   - **Description**: `Test complet du processus d'ajout au panier`

#### Étape C: Ajouter des Pas de Test (le plus important!)

Les pas de test sont des **instructions détaillées** pour que n'importe qui puisse reproduire votre test.

1. Onglet **Pas de Test**
2. **Ajouter un Pas**:

| Étape | Action | Résultat Attendu |
|-------|--------|------------------|
| 1 | Accéder à la page produits | La liste des produits s'affiche |
| 2 | Cliquer sur un produit | La page détail s'ouvre |
| 3 | Cliquer sur "Ajouter au panier" | Un message de confirmation apparaît |
| 4 | Ouvrir le panier | Le produit s'affiche avec quantité 1 |
| 5 | Vérifier le total | Le total correspond au prix du produit |

**Astuce Pro**: Plus vos pas sont détaillés, plus ils seront faciles à automatiser plus tard!

#### Étape D: Lier l'Exigence au Cas de Test

1. Onglet **Exigences couvres**
2. **+ Ajouter** → Sélectionnez `REQ-001`

**Pourquoi?** Squash saura que ce cas de test valide cette exigence.

---

### Tutorial 3: Créer une Campagne de Test

**Objectif**: Organiser "qui teste quoi et quand"

#### Étape A: Créer la Campagne

1. Squash TM → **Campagnes** (menu de gauche)
2. **+ Nouvelle Campagne**
3. Remplissez:
   - **Nom**: `Sprint 1 - Panier d'Achat`
   - **Description**: `Tests fonctionnels du panier d'achat`
   - **Date de début**: Aujourd'hui
   - **Date de fin**: Dans 5 jours

#### Étape B: Ajouter une Itération

Les itérations permettent de **sous-diviser** une campagne (jour 1, jour 2, etc.)

1. Onglet **Itérations**
2. **+ Nouvelle Itération**
3. Nommez-la: `Semaine 1 - Panier`

#### Étape C: Ajouter des Cas de Test

1. Dans l'itération, **+ Ajouter des Cas de Test**
2. Sélectionnez `TC-001` (créé plus tôt)
3. Confirmer

**Résultat**: Vous avez une campagne avec cas de test assignés. Prêt pour l'exécution!

---

### Tutorial 4: Exécuter un Test Manuellement

**Objectif**: Voir comment on teste "en vrai"

#### Étape A: Accéder à l'Exécution

1. Squash TM → **Exécution** (menu de gauche)
2. Sélectionnez votre campagne → itération
3. Cliquez sur `TC-001`

#### Étape B: Exécuter le Test

1. **Lancer l'exécution**
2. Pour chaque pas de test:
   - Lisez l'instruction
   - Exécutez dans votre navigateur (l'app de test)
   - Vérifiez le résultat attendu
   - Cochez ✅ (Succès) ou ❌ (Échec)

#### Exemple d'Exécution

```
Pas 1: Accéder à la page produits
  → Je vais sur http://app-test.local/produits
  → La liste s'affiche ✅

Pas 2: Cliquer sur un produit
  → Je clique sur "Laptop 15 pouces"
  → La page détail s'ouvre ✅

Pas 3: Ajouter au panier
  → Je clique sur "Ajouter au panier"
  → Message "Produit ajouté" s'affiche ✅

Pas 4: Ouvrir le panier
  → Je clique sur l'icône panier
  → Je vois le laptop avec quantité 1 ✅

Pas 5: Vérifier le total
  → Je vois "Total: 999€"
  → C'est correct (prix du laptop) ✅

Résultat Final: ✅ SUCCÈS
```

#### Étape C: Si Vous Trouvez un Bug!

Supposons que le total du panier affiche **1800€** au lieu de **999€** (bug!)

1. Pour ce pas, sélectionnez ❌ **Échec**
2. Remplissez les détails du problème:
   - **Message**: "Total incorrect: 1800€ au lieu de 999€"
   - **Statut**: `Échec - À investiguer`

3. **Créer une Anomalie** (voir section suivante)

---

### Tutorial 5: Rapporter une Anomalie dans Mantis BT

**Objectif**: Créer un rapport de bug professionnel

#### Étape A: Accéder à Mantis BT

1. Ouvrez http://localhost:8989
2. Connexion: `administrator / root`

#### Étape B: Créer un Rapport de Bug

1. **Rapport d'Anomalie** (menu haut) → **Signaler une Anomalie**
2. Remplissez le formulaire:

```
Catégorie:           Panier / Calcul du Prix
Priorité:            Majeur (produit ne peut pas être vendu)
Gravité:             Sérieuse (fonctionnalité affectée)
Statut:              Nouveau

Résumé:              Total du panier incorrectement calculé

Description:         
En tant que testeur, j'ai trouvé une erreur lors d'un test de panier.

Contexte:
- Cas de test: TC-001 "Vérifier l'ajout d'un article"
- Campagne: "Sprint 1 - Panier d'Achat"
- Date: [Aujourd'hui]

Étapes à reproduire:
1. Aller sur la page produits
2. Ajouter "Laptop 15 pouces" (999€) au panier
3. Ouvrir le panier
4. Vérifier le total

Résultat observé:
Le total affiche 1800€

Résultat attendu:
Le total devrait afficher 999€

Environnement:
- Navigateur: Chrome 125.0
- Système: Windows 10
- App: v1.2.3-beta
```

3. Cliquez sur **Créer**

**Félicitations!** 🎉 Vous venez de créer votre premier bug officiel!

---

### Tutorial 6: Intégration Squash TM ↔ Mantis BT

**Objectif**: Lier automatiquement les anomalies

#### Étape A: Configuration (Une seule fois)

1. **Squash TM** → **Administration** (en bas-gauche)
2. **Préférences** → **Plugins**
3. Cherchez **Mantis BT Plugin**
4. Configurez:
   - URL de Mantis: `http://localhost:8989`
   - Identifiant: `administrator`
   - Mot de passe: `root`
5. **Tester la connexion** → doit afficher ✅

#### Étape B: Lier lors de l'Exécution d'un Test

Pendant que vous testez un cas et découvrez un bug:

1. Cliquez sur ❌ **Créer une Anomalie**
2. Squash affiche: "Créer dans Mantis BT?"
3. Cliquez sur **Créer**
4. Un formulaire Mantis s'ouvre pré-rempli:
   - Cas de test: `TC-001`
   - Campagne: `Sprint 1`
   - Description: Pré-remplie de votre contexte de test
5. Confirmez → Bug créé automatiquement!

#### Étape C: Voir le Lien Bidirectionnel

**Dans Squash TM**:
- Allez sur l'exécution du test
- Onglet **Anomalies liées**: Affiche le bug Mantis
- Cliquez dessus → Ouvre le bug dans Mantis

**Dans Mantis BT**:
- Allez sur le bug créé
- Voyez un lien vers le cas de test Squash
- Cliquez → Retour à Squash

**Résultat**: Tous connectés, pas de confusion!

---

## 🔗 Intégration Squash-Mantis

### Le Scénario Idéal: Collaboration en Temps Réel

Voici comment un projet moderne fonctionne:

```
JOUR 1 - MATIN: Préparation des Tests
┌─────────────────────────────────────┐
│ QA Lead crée dans Squash TM:        │
│ - REQ-001: Panier d'achat           │
│ - TC-001: Test ajouter au panier    │
│ - Campagne Sprint 1                 │
└─────────────────────────────────────┘

JOUR 1 - APRÈS-MIDI: Exécution
┌─────────────────────────────────────┐
│ Testeur Junior (vous!) teste:       │
│ → Pas 1-3: OK ✅                     │
│ → Pas 4: Bug détecté! ❌            │
│ → Crée anomalie dans Mantis         │
└─────────────────────────────────────┘

JOUR 1 - FIN: Notification
┌─────────────────────────────────────┐
│ Système envoie emails:              │
│ - Développeur recoit le bug         │
│ - Context: Cas de test + campagne   │
│ - Statut: Nouveau                   │
└─────────────────────────────────────┘

JOUR 2-3: Développement
┌─────────────────────────────────────┐
│ Développeur corrige le bug          │
│ Mantis: Statut → En cours → Résolu  │
└─────────────────────────────────────┘

JOUR 4: Vérification
┌─────────────────────────────────────┐
│ Testeur retest le cas:              │
│ TC-001 → Pas 4: OK ✅               │
│ Mantis: Statut → Fermé              │
│ Rapport: 0 bugs restant ✅          │
└─────────────────────────────────────┘
```

### Commandes Docker Utiles

```bash
# Voir l'état
docker-compose ps

# Voir les logs en direct
docker-compose logs -f squash-tm
docker-compose logs -f mantis-bt

# Redémarrer un service
docker-compose restart squash-tm

# Arrêter tout
docker-compose down

# Arrêter tout ET supprimer les données (⚠️  attention!)
docker-compose down -v

# Entrer dans un conteneur (debug)
docker-compose exec squash-tm bash
docker-compose exec mariadb-squash bash

# Backup des bases de données
docker exec mariadb-squash mysqldump -u root -proot squashdb > backup_squash.sql
docker exec mariadb-mantis mysqldump -u root -proot bugtracker > backup_mantis.sql
```

---

## 📊 Votre Évolution Professionnelle

### 🎓 Phases d'Apprentissage Recommandées

#### Phase 1: Fondamentaux (1-2 mois)
- ✅ Installer et configurer les outils
- ✅ Créer des exigences
- ✅ Rédiger des cas de test détaillés
- ✅ Exécuter des tests manuels
- ✅ Signaler des bugs clairement

**Compétences acquises**: "Je sais tester méthodiquement"

#### Phase 2: Optimisation (2-4 mois)
- ✅ Utiliser les filtres et recherches avancées
- ✅ Créer des campagnes complexes
- ✅ Analyser les rapports Mantis (tendances)
- ✅ Collaborer avec développeurs
- ✅ Documenter des résultats professionnels

**Compétences acquises**: "Je suis un testeur efficace"

#### Phase 3: Automatisation (4-6 mois)
- ✅ Identifier les cas testables automatiquement
- ✅ Écrire des scripts Selenium/Cypress
- ✅ Intégrer l'automatisation dans Squash TM
- ✅ Pipeline CI/CD (Jenkins, GitLab CI, etc.)

**Compétences acquises**: "Je suis QA Engineer"

#### Phase 4: Leadership (6+ mois)
- ✅ Mettre en place la stratégie de test
- ✅ Manager une équipe QA
- ✅ Améliorer la qualité globale
- ✅ Metrics et ROI du testing

**Compétences acquises**: "Je suis QA Manager/Directeur"

### 💼 Carrière Réelle: Témoignage Type

**Alice, Développeuse → QA, parcours en 3 ans**:

> "J'ai d'abord automatisé mes tests avec Selenium. Puis j'ai utilisé Squash TM pour organiser ma stratégie. Aujourd'hui, je suis Lead QA pour une équipe de 8 testeurs. Mon salaire a augmenté de 50%. Mais plus que l'argent, j'aime voir notre produit sortir SANS bugs!"

### 🚀 Prochaines Étapes Recommandées

Après ce projet, apprenez:

1. **Automatisation**: Selenium, Cypress, Robot Framework
2. **Scripting**: Python, JavaScript pour écrire des tests
3. **DevOps**: CI/CD, Docker avancé, Kubernetes
4. **Méthodologies**: Agile, Scrum, SAFe
5. **Outils pro**: Jira, Azure DevOps, HP ALM

---

## 🆘 Dépannage

### ❌ "Je ne peux pas accéder à Squash TM"

**Cause 1**: L'app n'est pas encore prête
```bash
# Attendez 60 secondes et vérifiez les logs
docker-compose logs squash-tm | tail -20

# Cherchez: "Server started on port 8080" ou "Ready to serve requests"
```

**Cause 2**: Port déjà utilisé
```bash
# Trouvez ce qui utilise le port 8080
lsof -i :8080  # Mac/Linux
netstat -ano | findstr :8080  # Windows

# Solution: Changez le port dans docker-compose.yml
# Remplacez: "8080:8080"
# Par: "8081:8080"
# Puis: docker-compose down && docker-compose up -d
```

**Cause 3**: Docker Desktop n'est pas lancé
- ✅ Mac: Lancez l'app Docker Desktop
- ✅ Windows: Idem
- ✅ Linux: Le service docker doit être actif (`sudo systemctl start docker`)

### ❌ "Les bases de données ne s'initialisent pas"

```bash
# Vérifiez les logs MariaDB
docker-compose logs mariadb-squash
docker-compose logs mariadb-mantis

# Si erreur d'espace disque: docker system prune -a
# Supprimer les volumes et recommencer:
docker-compose down -v
docker-compose up -d
```

### ❌ "Squash n'accepte pas ma connexion"

Identifiants par défaut:
- **Squash**: `admin` / `admin` (respectez la casse!)
- **Mantis**: `administrator` / `root`

Si changés, restaurez avec:
```bash
docker-compose down -v
docker-compose up -d
# Patienter 60s, identifiants par défaut reviennent
```

### ❌ "La connexion Squash ↔ Mantis ne fonctionne pas"

1. Vérifiez que Mantis fonctionne: http://localhost:8989
2. Dans Squash: Admin → Plugins → Mantis
3. Cliquez sur "Tester la connexion"
4. Message d'erreur? Cherchez dans Mantis:
   - Admin → Gestion des Utilisateurs
   - Créez un utilisateur `squash-connector` avec mot de passe simple
5. Recommencez le test de connexion

### 🐛 "J'ai un bug dans les apps elles-mêmes!"

C'est normal avec des outils open-source. Solutions:

```bash
# 1. Vérifier les logs détaillés
docker-compose logs -f [service]

# 2. Relancer le service
docker-compose restart [service]

# 3. Supprimer et recommencer (perte de données!)
docker-compose down -v
docker-compose up -d

# 4. Chercher sur GitHub/Docs officielles
# Squash: https://github.com/squash-tamd/squash-tm
# Mantis: https://github.com/mantisbt/mantisbt
```

---

## 📚 Ressources Complémentaires

### 📖 Documentation Officielle
- **Squash TM**: https://tm-en.doc.squashtest.com
- **Mantis BT**: https://www.mantisbt.org/docs/
- **Docker**: https://docs.docker.com/

### 🎓 Formations Recommandées
1. **Fondamentaux Docker**: "Docker pour Débutants" (YouTube)
2. **Méthodologie Test**: "ISTQB Certified Tester" (certification officielle)
3. **Squash TM**: Webinaires gratuits sur https://www.squashtest.com
4. **Python pour QA**: "Automate the Boring Stuff with Python"

### 🤝 Communautés
- **Squash TM Community**: https://www.squashtest.com/community
- **Mantis BT Forum**: https://www.mantisbt.org/forums
- **Reddit r/QualityAssurance**: https://www.reddit.com/r/QualityAssurance/
- **LinkedIn**: Suivez les QA Managers/Leaders pour les tendances

---

## 🎯 Conclusion: C'est Votre Aventure!

Vous tenez maintenant dans vos mains les **outils professionnels** utilisés par les meilleures équipes du monde. Squash TM et Mantis BT sont déjà utilisés par:

- **Orange, EDF, SNCF** en France
- **Microsoft, Google, Meta** aux États-Unis
- **SAP, Siemens, Bosch** en Allemagne
- Des centaines d'autres...

### Votre Superpower 🦸‍♀️

Vous êtes devenu(e):
- ✅ **Scientifique**: Vous testez méthodiquement
- ✅ **Communicateur**: Vous décrivez précisément
- ✅ **Détective**: Vous trouvez les bugs avant les utilisateurs
- ✅ **Gardien de la Qualité**: Vous protégez les utilisateurs

### Le Défi

**Dans 3 mois**, vous serez capable de:
1. ✅ Créer 50+ cas de test complexes
2. ✅ Exécuter une campagne de test complète
3. ✅ Gérer 20+ anomalies
4. ✅ Générer des rapports professionnels
5. ✅ Collaborer efficacement avec une équipe

**Le salaire suivra.** Mais plus important: vous aurez créé de la **valeur réelle**.

---

## ✉️ Questions?

Si vous avez des questions ou des améliorations pour ce projet:
1. Ouvrez une **Issue** sur GitHub
2. Créez une **Pull Request** avec vos améliorations
3. Contactez votre formateur

---

> *"Le test n'est pas juste trouver des bugs. C'est s'assurer que les millions d'utilisateurs de demain n'ont pas une mauvaise journée à cause de notre code."*
>
> — **Un testeur senior qui vous souhaite bienvenue** 🚀

---

**Dernière mise à jour**: Juillet 2025
**Version du projet**: 1.0.0
**Pour**: Élèves testeurs - Niveau débutant à intermédiaire
**Durée estimée d'apprentissage**: 3-6 mois
