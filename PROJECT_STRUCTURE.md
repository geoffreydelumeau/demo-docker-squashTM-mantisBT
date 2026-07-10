# 📁 Structure du Projet TestLab Academy

Bienvenue! Voici une carte complète du projet pour vous aider à naviguer.

---

## 📂 Arborescence

```
demo-docker-squashTM-mantisTB/
│
├── 📄 docker-compose.yml          ← Configuration Docker (PRINCIPAL)
│
├── 📚 DOCUMENTATION (Commencez ici!)
│   ├── 📄 README.md               ← Guide complet pédagogique
│   ├── 📄 INTRODUCTION.md         ← Vision et contexte carrière
│   ├── 📄 QUICKSTART.md           ← Démarrage en 5 minutes
│   ├── 📄 DOCKER_EXPLAINED.md     ← Docker pour débutants
│   ├── 📄 PROJECT_STRUCTURE.md    ← Ce fichier
│   └── 📄 CONTRIBUTING.md         ← Comment améliorer le projet
│
├── 📊 SQUASH TM (Vides initialement, créés au premier démarrage)
│   ├── 📁 squash-tm/
│   │   ├── config/                ← Configuration Squash
│   │   ├── logs/                  ← Logs d'exécution
│   │   └── attachments/           ← Fichiers joints aux tests
│
├── 🐛 MANTIS BT (Vides initialement, créés au premier démarrage)
│   ├── 📁 mantis/
│   │   ├── config/                ← Configuration Mantis
│   │   ├── plugins/               ← Extensions Mantis
│   │   ├── custom/                ← Customisations
│   │   └── logs/                  ← Logs Apache
│
├── 💾 MARIADB (Vides initialement, créés au premier démarrage)
│   └── 📁 mariadb/
│       ├── squash-init/           ← Scripts d'initialisation Squash DB
│       ├── squash-logs/           ← Logs MariaDB Squash
│       ├── mantis-init/           ← Scripts d'initialisation Mantis DB
│       └── mantis-logs/           ← Logs MariaDB Mantis
│
├── 📜 LICENSE                     ← Licence du projet
└── .env                           ← Configuration secrète (À créer localement)
```

---

## 📖 Guide de Lecture Recommandé

### Pour Commencer (30 minutes)

1. **[QUICKSTART.md](./QUICKSTART.md)** (5 min)
   - Installer et lancer l'app en 5 minutes
   - Vérifier que tout fonctionne

2. **[INTRODUCTION.md](./INTRODUCTION.md)** (20 min)
   - Comprendre pourquoi ces outils
   - Vision de votre carrière
   - Contexte du marché en 2025

### Pour Apprendre (2-3 heures)

3. **[README.md](./README.md)** (1.5 heures)
   - Tutoriels complets et détaillés
   - Cas d'usage réels
   - Dépannage

4. **[DOCKER_EXPLAINED.md](./DOCKER_EXPLAINED.md)** (45 min)
   - Concepts Docker
   - Pourquoi Docker pour le test
   - Commandes essentielles

### Pour Améliorer (si contribution)

5. **[CONTRIBUTING.md](./CONTRIBUTING.md)**
   - Comment améliorer le projet
   - Créer des Issues
   - Soumettre des Pull Requests

---

## 🔑 Fichiers Critiques Expliqués

### 🐳 `docker-compose.yml`

**C'est QUOI**: Le blueprint de toute l'infrastructure

**Contient**:
- Configuration de Squash TM
- Configuration de Mantis BT
- Configuration de 2 bases MariaDB
- Paramètres réseau et volumes

**Modifiez-le si**:
- Vous voulez changer les ports (8080 → 8081)
- Vous voulez ajouter un service (Jenkins, etc.)
- Vous optimisez les ressources

**NE LE SUPPRIMEZ PAS!** Tout dépend de ce fichier.

### 🔐 `.env.example` et `.env`

**`.env.example`** (à commiter sur Git)
- Template avec valeurs par défaut
- Documentation sur chaque paramètre
- SANS les vrais mots de passe

**`.env`** (à JAMAIS commiter!)
- Configuration réelle de votre machine
- Contient les mots de passe
- Créé avec: `cp .env.example .env`

**Important**: Modifiez `.env`, pas `.env.example`!

### 📚 `README.md`

**C'est QUOI**: Le guide complet du projet

**Sections**:
1. Démarrage rapide
2. Pourquoi ces outils
3. Concepts fondamentaux
4. Installation détaillée
5. Tutoriels pratiques
6. Intégration Squash-Mantis
7. Votre carrière
8. Dépannage

**Valeur**: Extrêmement important, lisez complètement!

### 🎓 `INTRODUCTION.md`

**C'est QUOI**: Vision pédagogique et carrière

**Pour qui**:
- Élèves qui se demandent "pourquoi apprendre ça?"
- Testeurs qui veulent progresser
- Parents curieux du métier

**Contient**:
- État du marché 2025
- Histoires vraies de carrières
- Votre roadmap d'apprentissage
- Les pièges à éviter

---

## 🚀 Workflows Typiques

### Workflow 1: Première Utilisation

```
1. Lisez QUICKSTART.md (5 min)
   ↓
2. Lancez init-project.sh ou .bat
   ↓
3. Vérifiez http://localhost:8080/squash et http://localhost:8989
   ↓
4. Changez les mots de passe par défaut
   ↓
5. Lisez README.md pour les tutoriels
```

### Workflow 2: Apprentissage Quotidien

```
1. docker-compose up -d (démarrer les services)
   ↓
2. Ouvrir Squash TM dans navigateur
   ↓
3. Suivre un tutorial du README
   ↓
4. Pratiquer pendant 1-2 heures
   ↓
5. docker-compose down (arrêter, données sauvegardées)
```

### Workflow 3: Amélioration du Projet

```
1. Lire CONTRIBUTING.md
   ↓
2. Créer une Issue si amélioration
   ↓
3. Faire la modification
   ↓
4. Tester localement avec docker-compose
   ↓
5. Créer une Pull Request
```

---

## 📊 Taille des Fichiers (Approximatif)

```
docker-compose.yml:      ~5 KB (configuration)
README.md:               ~80 KB (documentation)
INTRODUCTION.md:         ~45 KB (pédagogie)
QUICKSTART.md:          ~8 KB (rapide)
DOCKER_EXPLAINED.md:    ~35 KB (éducation)
CONTRIBUTING.md:        ~20 KB (contribution)
Total Documentation:    ~193 KB

Images Docker (téléchargées):
  - Squash TM:          ~800 MB
  - Mantis BT:          ~200 MB
  - MariaDB:            ~200 MB
  Total:                ~1.2 GB

Données à runtime (volumes):
  - Bases de données:   ~50-100 MB (selon utilisation)
  - Logs:               ~10-20 MB
  Total:                ~60-120 MB
```

---

## 🔄 Flux de Données

```
┌─────────────────────────────────────────────────────────┐
│                   VOS NAVIGATEURS                        │
├─────────────────┬───────────────────────┬────────────────┤
│                 │                       │                │
▼                 ▼                       ▼                ▼
http://8080    http://8989           local/files       .env
  │               │                      │
  │               │                      │
┌─┴────────┐    ┌─┴────────┐           │
│ SQUASH   │    │ MANTIS   │           │
│   TM     │    │    BT    │           │
└──┬───────┘    └──┬───────┘           │
   │               │                   │
   │ (port 8080)   │ (port 8989)      │
   │               │                   │
   └───────┬───────┘                   │
           │                          │
        DOCKER                        │
    (conteneurs)                      │
           │                          │
      ┌────┴──────────────────────────┘
      │
   VOLUMES (persistance)
      │
   ┌──┴──┬──────────┬──────────┬──────────┐
   │     │          │          │          │
   ▼     ▼          ▼          ▼          ▼
Squash  Mantis   MySQL    MySQL         .env
Config   Config  Squash   Mantis       (secrets)
  │       │       DB       DB
  │       │       │        │
  └───────┼───────┴────────┘
          │
    VOTRE DISQUE DUR
    (données persistantes)
```

---

## 🎯 Checklist d'Installation

- [ ] Lisez QUICKSTART.md
- [ ] Docker Desktop installé
- [ ] Exécutez init-project.sh ou .bat
- [ ] Attendez 60-90 secondes
- [ ] Accédez à localhost:8080 (Squash)
- [ ] Accédez à localhost:8989 (Mantis)
- [ ] Changez les mots de passe par défaut
- [ ] Créez votre fichier .env
- [ ] Commencez le README.md

---

## 🔗 Références Externes

### Documentation Officielle
- **Squash TM**: https://tm-en.doc.squashtest.com/
- **Mantis BT**: https://www.mantisbt.org/docs/
- **Docker**: https://docs.docker.com/
- **MariaDB**: https://mariadb.com/kb/

### Communautés
- **Squash TM**: https://www.squashtest.com/community
- **Mantis BT**: https://www.mantisbt.org/forums
- **Reddit QA**: https://www.reddit.com/r/QualityAssurance/

### Apprentissage
- **Docker for Beginners**: https://www.docker.com/101-tutorial/
- **ISTQB Testing**: https://www.istqb.org/
- **Python for QA**: https://docs.python-guide.org/

---

## 📞 Support & Questions

| Question | Ressource |
|----------|-----------|
| "Comment installer?" | QUICKSTART.md |
| "Comment tester?" | README.md |
| "Pourquoi apprendre ça?" | INTRODUCTION.md |
| "Docker c'est quoi?" | DOCKER_EXPLAINED.md |
| "Ça marche pas!" | README.md → Dépannage |
| "Je veux améliorer" | CONTRIBUTING.md |
| "Structure du projet?" | Ce fichier! |

---

## 🎓 Progression Recommandée

```
Jour 1: QUICKSTART + installation (1h)
Jour 2: INTRODUCTION + vision carrière (1h)
Jour 3-4: README tutorials 1-3 (6h)
Jour 5-6: README tutorials 4-6 (6h)
Semaine 2: DOCKER_EXPLAINED (2h)
Semaine 2+: Projets personnels (∞h)
```

---

## 📈 Critères de Succès

**Vous avez réussi quand**:

- ✅ Vous créez une exigence dans Squash
- ✅ Vous créez un cas de test détaillé
- ✅ Vous l'exécutez manuellement
- ✅ Vous signalez une anomalie dans Mantis
- ✅ Vous comprenez les concepts Docker
- ✅ Vous pouvez expliquer à quelqu'un d'autre
- ✅ Vous envisagez une améliorations du projet

**Vous êtes expert quand**:

- ✅ Vous créez des campagnes complexes
- ✅ Vous analysez les rapports
- ✅ Vous intégrez Squash et Mantis sans aide
- ✅ Vous commencez à automatiser les tests
- ✅ Vous contribuez au projet

---

## 🚀 Prochaines Étapes

1. **Immédiat**: Lisez QUICKSTART.md
2. **Jour 1**: Installez et explorez
3. **Semaine 1**: Terminez tous les tutoriels
4. **Semaine 2+**: Créez vos propres projets de test

---

## 📜 Dernière Mise à Jour

- **Date**: Juillet 2025
- **Version**: 1.0.0
- **Statut**: Production-Ready
- **Pour**: Élèves testeurs débutants

---

**Vous êtes prêt(e)? Commencez par [QUICKSTART.md](./QUICKSTART.md)!** 🚀

*Bonne chance dans votre apprentissage!* 🧪
