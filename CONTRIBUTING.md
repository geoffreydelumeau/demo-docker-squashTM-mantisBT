# 🤝 Guide de Contribution - TestLab Academy

Bienvenue! Vous trouvez une erreur ou une amélioration? Vous êtes au bon endroit!

---

## 📖 Avant de Commencer

Ce projet est **pour les élèves testeurs, par les élèves testeurs**.

Si vous améliorez quelque chose:
1. ✅ Vous apprenez
2. ✅ Vous aider les autres
3. ✅ Vous créez du portfolio GitHub
4. ✅ Vous augmentez votre employabilité

Tout le monde gagne! 🎉

---

## 🐛 Vous Avez Trouvé un Bug?

### Étape 1: Vérifier que c'est vraiment un bug

```
❌ PAS un bug:
   - "J'ai lu INTRODUCTION 3 fois et je comprends rien"
   - "Je ne sais pas comment installer Docker"
   - Ces cas = LISEZ LE README d'abord!

✅ UN BUG:
   - Docker-compose.yml a une syntaxe incorrecte
   - Un lien du README pointe nulle part
   - Squash n'accepte pas ma connexion (vérifiez d'abord!)
   - Les instructions sont contradictoires
```

### Étape 2: Créer une Issue

Sur GitHub (ou votre plateforme):

1. Cliquez sur **Issues** → **New Issue**
2. Titre clair: `[BUG] Erreur MariaDB après docker-compose up`
3. Description avec:
   ```
   **Description du bug:**
   Les bases de données MariaDB ne s'initialisent pas.
   
   **Étapes à reproduire:**
   1. docker-compose up -d
   2. Attendre 60s
   3. docker-compose logs mariadb-squash
   
   **Résultat observé:**
   ERROR: Connection refused
   
   **Résultat attendu:**
   L'app devrait être accessible
   
   **Environnement:**
   - OS: Windows 11
   - Docker version: 25.0.0
   - RAM allouée: 2GB
   
   **Screenshots:**
   [Joignez un screenshot si pertinent]
   ```

4. Cliquez sur **Submit**

**Voilà!** Vous venez de faire un excellent bug report! 🎯

---

## 💡 Vous Avez une Idée d'Amélioration?

### Types d'Améliorations Bienvenues

✅ **Documentation**:
- Clarifier une explication
- Ajouter des exemples
- Corriger les fautes

✅ **Code**:
- Améliorer docker-compose.yml
- Ajouter des commentaires
- Optimiser la performance

✅ **Tutoriels**:
- Ajouter un nouveau tutorial
- Améliorer les existing
- Ajouter des screenshots

✅ **Scripts**:
- Créer un script de setup pour Linux/Mac
- Améliorer les scripts existants
- Ajouter des validations

### Créer une Issue pour une Idée

1. **Issues** → **New Issue**
2. Titre: `[FEATURE] Ajouter un tutorial sur l'automatisation`
3. Description:
   ```
   **Description:**
   Les élèves demandent comment lier Squash TM à Selenium pour l'automatisation.
   
   **Pourquoi c'est utile:**
   C'est une progression naturelle après maîtriser les cas de test manuels.
   
   **Comment l'implémenter:**
   Créer un nouveau fichier AUTOMATION_TUTORIAL.md avec:
   - Installation de Selenium
   - Écriture d'un script simple
   - Intégration dans Squash TM
   - Liens vers les ressources
   ```

---

## 🔧 Contribuer du Code

### Setuper Votre Environnement de Contribution

```bash
# 1. Clonez le repo
git clone [repo-url] testlab-dev
cd testlab-dev

# 2. Créez une branche pour votre contribution
git checkout -b fix/nom-du-bug
# ou
git checkout -b feature/nom-de-la-fonctionnalite

# 3. Faites vos modifications

# 4. Testez localement!
docker-compose down
docker-compose up -d
# Vérifiez que tout fonctionne

# 5. Commitez
git add .
git commit -m "Fix: Corriger l'erreur de connexion MariaDB"

# 6. Poussez
git push origin fix/nom-du-bug

# 7. Créez une Pull Request (PR)
# GitHub vous proposera automatiquement
```

### Convention des Commits

Utilisez cette convention:

```
[TYPE] Message court en français

Description détaillée si nécessaire
```

Types:
- `fix:` Correction d'un bug
- `feat:` Nouvelle fonctionnalité
- `docs:` Documentation
- `refactor:` Amélioration du code
- `style:` Formatage, commentaires
- `test:` Ajout de tests

Exemples:
```
docs: Clarifier les étapes d'installation Squash
fix: Corriger le path des volumes MariaDB
feat: Ajouter tutorial d'automatisation Selenium
```

---

## 📋 Checklist Avant de Soumettre une PR

Avant de cliquer sur **Create Pull Request**, vérifiez:

- [ ] Mon code fonctionne localement
- [ ] J'ai testé sur Mac/Windows/Linux
- [ ] Les commentaires sont clairs
- [ ] Les fichiers .env ne sont pas committés
- [ ] Le README est à jour
- [ ] Les liens fonctionnent
- [ ] Pas d'erreurs Docker
- [ ] Les instructions sont claires

---

## 📝 Améliorations de Documentation

La plupart des contributions seront sur la **documentation**.

### Comment Améliorer la Doc?

1. Lisez le fichier concerné
2. Créez une branche: `git checkout -b docs/clarifier-readme`
3. Modifiez le .md
4. Testez que les liens fonctionnent:
   ```bash
   # Vérifier les liens (Linux/Mac)
   grep -r "http://" *.md
   ```
5. Commitez et créez une PR

### Standards de Documentation

```markdown
# Titre de Section (H1)

Explication courte et claire en français.

## Sous-section (H2)

Plus de détails.

### Détails (H3)

Informations spécifiques.

**Points importants en gras**

- Listes à puces
- Pour les points importants
- Claires et concises

> Citations pour les conseils

\`\`\`bash
# Code examples avec syntaxe
docker-compose up -d
\`\`\`

[Liens explicites](https://url.com)
```

---

## 🎓 Exemple de Contribution Réelle

Vous trouvez que le README manque un exemple.

### Étape 1: Issue

```
Title: Ajouter un exemple de cas de test complexe

Description:
Les élèves devraient voir un exemple de cas de test avec:
- Paramètres
- Appels de cas de test
- Données
```

### Étape 2: Fork + Branch

```bash
git clone [repo-url] testlab-dev
cd testlab-dev
git checkout -b docs/exemple-cas-test-complexe
```

### Étape 3: Modification

Vous ajoutez une section au README.md:

```markdown
## Tutorial Avancé: Cas de Test avec Paramètres

Parfois, un même cas de test doit s'exécuter avec des données différentes.

**Exemple**: Tester la login avec plusieurs utilisateurs.

### Étape 1: Créer un Jeu de Données

Dans Squash TM:
1. Cas de Test → TC-001
2. Onglet "Paramètres"
3. **+ Ajouter Paramètre**: `username`
4. **+ Ajouter Paramètre**: `password`

### Étape 2: Ajouter des Données

1. Onglet "Jeux de Données"
2. **+ Nouveau Jeu de Données**:

| username | password |
|----------|----------|
| admin    | admin123 |
| user1    | pass1234 |
| user2    | pass5678 |

### Étape 3: Utiliser dans les Pas

Pas 1: "Entrer [username] dans le champ login"
Pas 2: "Entrer [password] dans le champ password"

### Étape 4: Exécuter

Lors de l'exécution, Squash posera:
"Quel jeu de données? (admin / user1 / user2)"

**Résultat**: Un cas de test = 3 scénarios testés! 🎯
```

### Étape 4: Commit et Push

```bash
git add README.md
git commit -m "docs: Ajouter tutorial cas de test avec paramètres"
git push origin docs/exemple-cas-test-complexe
```

### Étape 5: PR

Sur GitHub:
- **Pull Requests** → **New Pull Request**
- Base: `main`, Compare: `docs/exemple-cas-test-complexe`
- Titre: `Add advanced tutorial for parametrized test cases`
- Description: Expliquez votre apport
- Cliquez: **Create Pull Request**

**Attente de review** → Les mainteneurs valident
→ **Merged!** ✅

---

## 🎯 Idées de Contributions Faciles

Si vous cherchez par où commencer:

### Niveau Débutant (30 min)

- [ ] Corriger une faute d'orthographe
- [ ] Clarifier une instruction
- [ ] Ajouter un lien vers une ressource
- [ ] Améliorer un commentaire du docker-compose.yml

### Niveau Intermédiaire (1-2 heures)

- [ ] Ajouter un nouveau tutorial
- [ ] Créer un guide de dépannage complet
- [ ] Traduire une section en anglais
- [ ] Créer des exemples de cas de test

### Niveau Avancé (2-4 heures)

- [ ] Créer un script d'automatisation Selenium complet
- [ ] Ajouter une intégration avec Jira
- [ ] Créer des scripts de backup automatisés
- [ ] Améliorer les performances Docker

---

## ❓ Questions?

- **Je ne sais pas par où commencer**: Lisez les Issues étiquetées `good-first-issue`
- **Je ne comprends pas une notion**: Demandez sur Issues avec le label `question`
- **J'ai une idée fou**: Créez une Issue de Discussion!

---

## 🎉 Remerciements

Chaque contribution, même petite, aide l'écosystème!

Quand votre PR est merged, vous serez ajouté(e) au fichier:

```
## 🌟 Contributeurs

- [@votreNom](https://github.com/votreNom) - Amélioration de la doc
- [@autreNom](https://github.com/autreNom) - Correction bug Docker
```

---

## 📞 Contact & Support

- **Questions de code**: Créez une Issue
- **Idées générales**: Discussion dans Issues
- **Urgent**: Contactez le mainteneur

---

## 📜 Accord de Contribution

En contribuant, vous acceptez que vos contributions soient:
- Utilisées librement par le projet
- Sous la même licence (si applicable)
- Créditées publiquement

**C'est tout! Merci de rendre ce projet meilleur!** 🚀

---

*"Votre première contribution open source commence aujourd'hui. Ne doutez pas, c'est bon pour votre carrière!"* 💪
