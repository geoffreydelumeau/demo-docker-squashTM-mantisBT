# ⚡ QuickStart: 5 Minutes pour Tester

## 🎯 Objectif
Avoir Squash TM et Mantis BT en fonctionnement en **moins de 5 minutes**.

---

## ✅ Checklist Pré-requis (2 min)

- [ ] **Docker Desktop installé?**
  - Mac/Windows: https://www.docker.com/products/docker-desktop
  - Linux: `sudo apt-get install docker.io docker-compose`

- [ ] **Vérifier Docker fonctionne?**
  ```bash
  docker --version
  # Résultat: Docker version 25.0.0+
  ```

- [ ] **Projet cloné/téléchargé?**
  ```bash
  git clone [repo-url] testlab
  cd testlab
  ```

---

## 🚀 Installation (3 min)

### Étape 1: Un Seul Commande

```bash
# TOUT EST AUTOMATIQUE!
docker-compose up -d

# La sortie ressemble à:
# Creating network "testlab_testlab-network" with driver "bridge"
# Creating mariadb-squash ... done
# Creating mariadb-mantis ... done
# Creating squash-tm ... done
# Creating mantis-bt ... done
```

### Étape 2: Attendre l'Initialisation (60 secondes)

```bash
# Ouvrez un NOUVEAU terminal
docker-compose logs -f

# Attendez de voir:
# mariadb-squash | 2025-... ready for connections ✅
# squash-tm | Server started on port 8080 ✅

# Quand vous voyez ces messages, c'est prêt!
```

### Étape 3: Accès Immédiat!

**Squash TM**:
```
URL: http://localhost:8080/squash
Login: admin
Pass: admin
```

**Mantis BT**:
```
URL: http://localhost:8989
Login: administrator
Pass: root
```

---

## 📝 Premier Cas de Test (2 min)

### En 30 Secondes: Créer une Exigence

1. Allez sur http://localhost:8080/squash
2. Menu **Exigences** → **Nouveau Dossier** → `Mon Projet`
3. Clic-droit → **Créer une Exigence**
4. Remplissez:
   - Titre: `Se connecter avec email`
   - Descripton: `L'utilisateur peut se connecter avec un email`
5. **Créer** ✅

### En 30 Secondes: Créer un Cas de Test

1. Menu **Cas de Test** → **Nouveau Dossier** → `Tests Login`
2. Clic-droit → **Créer un Cas de Test**
3. Remplissez:
   - Titre: `Tester login valide`
4. Onglet **Pas de Test** → **Ajouter Pas**:
   - Étape: `Aller sur login`
   - Résultat: `Page login s'affiche`
5. **Enregistrer** ✅

---

## 🎯 Signaler Votre Premier Bug (2 min)

1. Allez sur http://localhost:8989
2. **Rapport d'Anomalie** (menu haut)
3. Remplissez:
   ```
   Résumé: Mon premier bug!
   Description: Ce bug est parfait
   Priorité: Majeur
   ```
4. **Créer** ✅

**Bravo!** Vous venez de faire un vrai rapport de bug! 🎉

---

## 🔧 Commandes Essentielles

### Voir l'état
```bash
docker-compose ps

# Résultat:
# CONTAINER              STATUS
# squash-tm              Up X seconds
# mantis-bt              Up X seconds
# mariadb-squash         Up X seconds
# mariadb-mantis         Up X seconds
```

### Relancer après redémarrage du PC
```bash
docker-compose up -d
# C'est tout!
```

### Arrêter tout
```bash
docker-compose down
# Les données sont conservées! (Volumes)
```

### Voir les logs
```bash
docker-compose logs -f squash-tm
docker-compose logs -f mantis-bt
```

### Nettoyer complètement (ATTENTION - perte de données!)
```bash
docker-compose down -v
# -v = supprime aussi les volumes
# À utiliser uniquement si vous avez un backup
```

---

## ❌ Problèmes Courants

| Problème | Solution |
|----------|----------|
| "Cannot reach localhost:8080" | Attendez 60s, `docker-compose logs squash-tm` |
| "Connection refused" | `docker-compose ps` → tous en "Up"? Si non, relancez |
| "Port 8080 already in use" | Changez dans docker-compose.yml `"8081:8080"` |
| "Docker not running" | Lancez Docker Desktop (Mac/Win) |
| "Database initialization taking too long" | Normal (60-90s), soyez patient |

---

## 🎓 Prochaines Étapes

Après ces 5 minutes:

1. **Lire** le README complet (30 min) → [README.md](./README.md)
2. **Regarder** l'Introduction (20 min) → [INTRODUCTION.md](./INTRODUCTION.md)
3. **Faire** les tutoriels complets (2 heures)
4. **Pratiquer** avec un petit projet (1 semaine)

---

## 📊 Résumé Ce Que Vous Venez de Faire

✅ Installer une infrastructure de test professionnelle
✅ Créer une exigence
✅ Créer un cas de test
✅ Créer une anomalie
✅ Comprendre le workflow

**Temps total**: 5 minutes
**Valeur acquise**: Énorme! 🚀

Bienvenue dans l'univers du test professionnel! 🧪
