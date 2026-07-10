# 🐳 Docker Expliqué pour les Testeurs

> *"Docker, ce n'est pas juste pour les développeurs. C'est pour TOUS ceux qui veulent la qualité."*

---

## 📚 Table des Matières

1. [L'Analogie Facile](#lanalogie-facile)
2. [Concepts Clés](#concepts-clés)
3. [Pourquoi Docker pour le Test?](#pourquoi-docker-pour-le-test)
4. [Commandes Essentielles](#commandes-essentielles)
5. [Dépannage](#dépannage)

---

## 🎬 L'Analogie Facile

Imaginez que vous voulez servir du café:

### Sans Docker (Le Chaos)

```
Client A:        "Je veux un café!"
Moi:             "D'accord! Laisse-moi installer
                  une cafetière, une source d'eau,
                  avoir du café... attends 2 heures"
Client A:        "Je ne veux plus de café."

Client B:        "Je veux un café!"
Moi:             "Attends, il faut que je 
                  déinstalle le café de A,
                  réinstalle pour B... C'est compliqué"
```

### Avec Docker (La Solution)

```
Moi (avant):     "Je prépare une cafetière
                  parfaite et je l'empaquète"
                  → Image Docker = Recette

Moi (après):     *Clic* Cafetière prête pour Client A
                  *Clic* Cafetière prête pour Client B
                  *Clic* Cafetière prête pour Client C
                  
Résultat:        Tous heureux! ☕☕☕
```

---

## 🎯 Concepts Clés

### 1️⃣ Image Docker = Recette

Une **image** c'est une recette figée:
- "Prendre Ubuntu"
- "Installer Apache"
- "Installer PHP"
- "Copier mon app"
- "Démarrer Apache"

**Analogie**: Recette de gâteau

```
Recette = Image
    ↓
Gâteau cuit = Conteneur
```

**En pratique**:
```yaml
FROM php:8.2-apache          # Commencer avec PHP+Apache
RUN apt-get install mysql    # Installer MySQL
COPY ./app /var/www/html     # Copier mon code
EXPOSE 80                    # Exposer le port 80
CMD ["apache2-foreground"]   # Commande de démarrage
```

### 2️⃣ Conteneur = Instance

Un **conteneur** c'est une image lancée.

- **Image**: Le fichier blueprint (5MB)
- **Conteneur**: L'application en fonctionnement (200MB de RAM)

C'est comme:
- **CD de Windows**: L'image
- **Windows lancé sur votre PC**: Le conteneur

```bash
docker run -d -p 8080:80 nginx
# "Prends l'image nginx et lance un conteneur"
```

### 3️⃣ Fichier docker-compose.yml = Orchestre

Docker Compose permet de lancer **plusieurs** conteneurs qui parlent ensemble.

**Sans Docker Compose**:
```bash
docker run -d -p 3306:3306 mysql:8
docker run -d -p 8080:8080 squash-tm
docker run -d -p 8989:8989 mantis-bt
# (Et gérer les connexions entre eux... galère!)
```

**Avec Docker Compose**:
```bash
docker-compose up -d
# Un seul fichier! Tout est configuré!
```

Le fichier `docker-compose.yml` dit:
```yaml
services:
  mysql:
    image: mysql:8
    ports:
      - "3306:3306"
  
  squash:
    image: squash-tm:8.1.3
    ports:
      - "8080:8080"
    depends_on:
      - mysql  # "Squash attend que MySQL soit prêt"
    environment:
      DB_HOST: mysql  # "Parle à MySQL via ce nom"
```

### 4️⃣ Volume = Disque Persistant

**Le problème**: Quand vous arrêtez un conteneur, les données disparaissent!

```bash
docker-compose down
# ❌ Attention! Vos bases de données gone!
```

**La solution**: Les volumes

```yaml
volumes:
  - mariadb-squash-data:/var/lib/mysql
  
# Cela dit:
# "Mets les données de MySQL sur mon disque dur"
# "Même si le conteneur s'arrête, les données restent"
```

C'est comme:
- **Conteneur**: Votre session de travail
- **Volume**: Votre disque dur

Vous pouvez éteindre votre PC, ça ne supprime pas votre disque!

### 5️⃣ Réseau = Communication

**Le problème**: Comment Squash TM parle à MySQL?

**La solution**: Un réseau Docker

```yaml
networks:
  testlab-network:
    driver: bridge

services:
  squash:
    networks:
      - testlab-network
  mariadb:
    networks:
      - testlab-network
```

**Magie Docker**: Dans votre code Squash, vous dites:
```
database: mariadb
```

Et Docker traduit automatiquement "mariadb" en adresse IP interne!

C'est comme avoir les apps sur le même réseau interne de votre maison, même si elles sont sur des appareils différents.

---

## 🤔 Pourquoi Docker pour le Test?

### Problème 1: "Mon environnement de test est différent de la prod"

**Sans Docker**:
```
Moi (Mac):           "Squash fonctionne!"
Collègue (Windows):  "Pour moi c'est cassé!"
Chef:                "Comment ça, c'est possible?"
                     (Facepalm géant)
```

**Avec Docker**:
```
Moi (Mac):           docker-compose up -d → Squash
Collègue (Windows):  docker-compose up -d → Squash IDENTIQUE
Chef:                "C'est magique!"
```

**Pourquoi?** Docker isolé le OS, les versions, tout!

### Problème 2: "Je dois installer 10 trucs"

**Sans Docker**: 
```
Installation de Squash:
  - MySQL → 30 min
  - Tomcat → 20 min
  - Java → 15 min
  - Configurations → 1 heure
  Total: 2 heures! 😡
```

**Avec Docker**:
```
Installation:
  docker-compose up -d
  
Total: 1 minute! ✅
```

### Problème 3: "Je teste 3 versions différentes"

**Sans Docker**:
```
Version 1.0: Installation complète, test 1h, suppression, installation 1.0
Version 1.1: Installation, test 1h, suppression
Version 1.2: Installation, test 1h, suppression
Total: 5 heures! (+ risque de cassé quelque chose)
```

**Avec Docker**:
```
docker-compose up -d (v1.0)
test (5 min)
docker-compose down
docker-compose up -d (v1.1)
test (5 min)
Total: 30 min, zéro risque!
```

### Problème 4: "Je veux partager mon setup de test avec l'équipe"

**Sans Docker**:
```
Moi: "Voici mes 10 étapes d'installation..."
Collègue: "Ça marche pas pour moi..."
2 heures plus tard: "Ah c'était un proxy!"
```

**Avec Docker**:
```
Moi: docker-compose.yml (2KB)
Collègue: docker-compose up -d
Collègue: "C'est prêt!" (30s)
```

---

## ⚙️ Commandes Essentielles

### Afficher l'État

```bash
# Voir tous les conteneurs en fonctionnement
docker-compose ps

# Résultat:
# CONTAINER              STATUS              PORTS
# squash-tm              Up 5 minutes        0.0.0.0:8080->8080/tcp
# mantis-bt              Up 5 minutes        0.0.0.0:8989->80/tcp
# mariadb-squash         Up 5 minutes        3306/tcp
# mariadb-mantis         Up 5 minutes        3306/tcp
```

### Démarrer/Arrêter

```bash
# Démarrer tout
docker-compose up -d

# Arrêter tout (données conservées!)
docker-compose down

# Arrêter + supprimer les volumes (ATTENTION! Perte de données!)
docker-compose down -v

# Redémarrer un service
docker-compose restart squash-tm

# Relancer en voir les logs
docker-compose up -d && docker-compose logs -f
```

### Voir les Logs

```bash
# Voir les logs d'un service
docker-compose logs squash-tm

# Voir les logs en direct (suivre en temps réel)
docker-compose logs -f squash-tm

# 100 dernières lignes
docker-compose logs --tail=100 squash-tm

# Tous les services
docker-compose logs -f
```

### Exécuter une Commande dans un Conteneur

```bash
# Ouvrir un shell bash dans le conteneur
docker-compose exec squash-tm bash

# Exécuter une commande unique
docker-compose exec mariadb-squash mysql -u root -proot -e "SHOW DATABASES;"

# Exécuter un backup
docker-compose exec mariadb-squash mysqldump -u root -proot squashdb > backup.sql
```

### Inspecter et Déboguer

```bash
# Voir les détails d'un conteneur
docker inspect squash-tm

# Voir l'utilisation des ressources
docker stats

# Vérifier la connectivité réseau
docker-compose exec squash-tm ping mariadb-squash
```

### Nettoyage

```bash
# Supprimer les conteneurs arrêtés
docker container prune

# Supprimer les images inutilisées
docker image prune

# Supprimer les volumes orphelins
docker volume prune

# Nettoyage complet (ATTENTION!)
docker system prune -a --volumes
```

---

## 🆘 Dépannage Docker

### ❌ "Les conteneurs ne démarrent pas"

```bash
# Vérifier les logs d'erreur
docker-compose logs

# Souvent: Port déjà utilisé
lsof -i :8080
# Libérez le port ou changez le port dans docker-compose.yml

# Ressources insuffisantes
docker stats
# Augmentez la RAM/CPU allouée à Docker
```

### ❌ "Les conteneurs sont super lents"

```bash
# Docker Desktop → Preferences → Resources
# Montez la RAM à 4GB minimum
# Montez les CPU à 2-4 cores
```

### ❌ "Les volumes ne persistent pas"

```bash
# Vérifiez que les volumes sont bien définis
docker volume ls
docker volume inspect squashdb-data

# Les données sont dans:
# Linux:   ~/.docker/volumes/
# Mac:     ~/Library/Containers/com.docker.docker/Data/vms/0/data/Docker.raw
# Windows: C:\ProgramData\Docker\volumes\
```

### ❌ "Je ne peux pas accéder à localhost:8080"

```bash
# Vérifiez que le conteneur tourne
docker-compose ps

# Vérifiez le port est bien exposé
docker port squash-tm

# Testez la connexion depuis le conteneur
docker-compose exec squash-tm curl localhost:8080

# Si ça marche dans le conteneur mais pas dehors:
# → Problème de port forwarding
# → Redémarrez Docker Desktop
# → Ou changez le port dans docker-compose.yml
```

---

## 🎓 Concepts Avancés (Bonus)

### Dockerfile Personnalisé

Au lieu d'utiliser une image existante, créez votre propre:

```dockerfile
FROM squashtest/squash-tm:8.1.3

# Ajouter vos customisations
RUN apt-get install -y custom-tool
COPY ./my-config /opt/squashtm/config/

EXPOSE 8080
CMD ["startup.sh"]
```

Puis dans docker-compose:
```yaml
services:
  squash:
    build: ./my-dockerfile/
    # Cela construit l'image au lieu de la télécharger
```

### Variables d'Environnement

```yaml
services:
  squash:
    environment:
      DB_HOST: mariadb-squash
      JAVA_OPTS: "-Xmx1024m"  # Limite mémoire Java
      DEBUG: "true"           # Mode debug
```

Ou depuis un fichier `.env`:
```yaml
services:
  squash:
    env_file: .env
```

### Healthchecks

Vérifier que le conteneur est vraiment prêt:

```yaml
services:
  mariadb:
    healthcheck:
      test: ["CMD", "mysqladmin", "ping", "-h", "localhost"]
      interval: 10s
      timeout: 5s
      retries: 5
    
  squash:
    depends_on:
      mariadb:
        condition: service_healthy  # Attendre que la health check passe
```

---

## 📚 Ressources pour Aller Plus Loin

- **Doc Docker Officielle**: https://docs.docker.com/
- **Docker Hub (Registry d'images)**: https://hub.docker.com/
- **Interactive Tutorial**: https://www.docker.com/101-tutorial/
- **Docker Compose Deep Dive**: https://docs.docker.com/compose/

---

## 🎯 Conclusion

**Docker n'est pas un outil réservé aux devs.**

C'est un outil de **qualité et de reproductibilité**. Et guess what? **C'est votre métier!**

Comprendre Docker vous rend:
- ✅ Plus employable (+10-15k€/an)
- ✅ Capable de tester des environnements complexes
- ✅ Compétent en DevOps/QA (fusion des deux métiers)
- ✅ Indépendant (vous n'attendez personne pour tester)

**Allez à l'assaut!** 🚀

---

*P.S. Vous venez de lire un guide Docker pour testeurs! C'est déjà ça! Beaucoup de testeurs n'en savent pas autant que vous maintenant. 💪*
