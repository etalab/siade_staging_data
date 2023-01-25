# Dépôt de données de tests pour API Particulier / API Entreprise v3+

[![Tests](https://github.com/etalab/siade_staging_data/actions/workflows/tests.yml/badge.svg)](https://github.com/etalab/siade_staging_data/actions/workflows/tests.yml)

# ⚠️ Il s'agit encore d'un dépôt en chantier, rien n'est actuellement fonctionnel ⚠️

* [Fonctionnement](#fonctionnement)
  * [Cas de FranceConnect](#cas-de-franceconnect)
* [Contribution](#contribution)
  * [Installation en local](#installation-en-local)
  * [Lancer la suite de tests pour vérifier les payloads](#lancer-la-suite-de-tests-pour-vérifier-les-payloads)
  * [Génerer un jeton](./tokens)
  * [Ajout d'un nouvel endpoint](#ajout-dun-nouvel-endpoint)

Ce dépôt contient l'ensemble des données de tests pour les environnements de bac
à sable d'API Entreprise (seulement pour la v3+)
( https://staging.entreprise.api.gouv.fr ) et d'API
Particulier ( https://staging.entreprise.api.gouv.fr )

## Fonctionnement

L'ensemble des payloads de réponses se trouvent dans le dossier `payloads/`.
Chaque endpoint possède son propre dossier sous l'une de ces formes:

```
api_entreprise_version_path_to_payload
api_particulier_version_path_to_payload
```

Par exemple:

```
api_entreprise_v3_insee_unite_legale
api_particulier_v2_dgfip_svair
```

Une table de correspondance url <-> nom du dossier est disponible à la
racine du dossier payload: [README.md](./payloads/README.md) (généré
automatiquement par `bin/generate_payload_readme.rb`)

Chaque dossier possède un README.md ainsi que des fichiers YAML ayant le format
suivant:

```yaml
---
params:
  first_name: 'John'
  last_name: 'Doe'
status: 200
payload: |-
  {
    "status": "OK"
  }
```

Avec:

* `params`, ensemble de clé valeur traduisant les paramètres qui déclenchent la
    réponse associée ;
* `status`, le status de la réponse HTTP associé ;
* `payload`, la payload renvoyée.

Pour déclencher la réponse ci-dessous, avec comme application API Particulier
et comme chemin `v1/dgfip/impots`, il faut effectuer l'appel suivant:

```sh
curl -X GET \
  -H 'X-Api-Key: TOKEN' \
  -G -d 'first_name=John' -d 'last_name=Doe' \
  https://staging.particulier.api.gouv.fr/v1/dgfip/impots
```

Pour le cas d'API Entreprise:

```sh
curl -X GET \
  -H 'Authorization: Bearer TOKEN' \
  -G -d 'first_name=John' -d 'last_name=Doe' \
  https://staging.entreprise.api.gouv.fr/v1/dgfip/impots
```

L'ensemble des routes est listé à la racine du dossier [payloads](./payloads)

A noter qu'il est possible de mettre n'importe quel status (valide) hormis celui associé
aux paramètres invalides:

* Pour API Entreprise: 422
* Pour API Particulier: 400

En effet, les paramètres d'entrées sont vérifiés directement par l'application,
ce qui garantie un comportement iso avec la production.

### Cas de FranceConnect

Certains endpoints d'API Particulier sont FranceConnectés: cela implique que
l'on peut passer un jeton FranceConnect à la place des paramètres classiques
afin d'effectuer un appel auprès des fournisseurs de données.

Les données de tests de FranceConnect se trouvent dans le dossier
[payloads/france_connect/](payloads/france_connect/)

Il est possible dans ce dépôt de faire un mapping jeton <-> données
FranceConnect, et derrière faire un mapping Données FranceConnect <-> réponse de
l'API.

Par exemple pour `api/v2/etudiants-boursiers`:

1. Un mapping valide pour FranceConnect: [payloads/france_connect/cnous.yaml](./payloads/france_connect/cnous.yaml) ;
2. Un mapping pour `api/v2/etudiants-boursiers` qui prend exactement les
   paramètres d'identité renvoyés par le fichier ci-dessus:
   [payloads/api_particulier_v2_cnous_student_scholarship/franceconnect_cnous.yml](./payloads/api_particulier_v2_cnous_student_scholarship/franceconnect_cnous.yml)

Ainsi, l'appel suivant renverra in-fine la réponse définie en 2.:

```sh
curl -X GET \
  -H "Authorization: Bearer cnous" \
  https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers
```

Le jeton `cnous` correspond à la valeur du paramètre `token` dans le fichier de
définition de FranceConnect.

A noter que les scopes renvoyés par FranceConnect permettent de construire la
réponse adéquate.

Si on prend l'exemple de [payloads/france_connect/cnous_with_less_scopes.yaml](./payloads/france_connect/cnous_with_less_scopes.yaml) où le scope `cnous_identite` est manquant, couplé à
[payloads/api_particulier_v2_cnous_student_scholarship/france_connect_cnous_with_less_scopes.yml](./payloads/api_particulier_v2_cnous_student_scholarship/franceconnect_cnous_with_less_scopes.yml),
on obtient l'appel suivant:

```sh
curl -X GET \
  -H "Authorization: Bearer cnous_with_less_scopes" \
  https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers
```

La payload finale renvoyée par l'API sera filtrée des paramètres
correspondant au scope `cnous_identite`, soit les champs `nom`, `prenom`,
`prenom2`, `dateNaissance`, `lieuNaissance`, `sexe`.

A noter que les paramètres d'identité doivent être différentes afin que l'on
puisse faire un matching exacte: ici le `preferred_username` est différent entre
`cnous.yaml` et `cnous_with_less_scopes.yaml`.

## Contribution

### Installation en local

#### Dépendances

* ruby 3.2.0

```sh
bundle install
```

### Lancer la suite de tests pour vérifier les payloads

```sh
bundle exec rspec
```

### Générer un jeton

Référez vous à [tokens/](./tokens)

### Ajout d'un nouvel endpoint

1. Identifier l'operation_id (dans les fichiers swaggers: `x-operationId`) ;
2. Executer la commande : `bundle exec ruby bin/bootstrap_payload.rb
   operation_id` ;
3. La commande crée un dossier avec un `default.yaml` que vous devez adapter pour
   que la suite de test passe (cf plus bas).

## TODO

* Documenter FranceConnect
* Bootstrap un exemple avec API Entreprise v3
