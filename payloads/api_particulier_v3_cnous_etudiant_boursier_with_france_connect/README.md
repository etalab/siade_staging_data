# Status étudiant boursier
* [fake_france_connect_cnous.yml](fake_france_connect_cnous.yml)

  Status `200`

  FranceConnect: Boursier échelon 5 (scope complet)

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "MARTIN",
    "prenoms": "Jean",
    "anneeDateNaissance": 2001,
    "moisDateNaissance": 1,
    "jourDateNaissance": 1,
    "sexeEtatCivil": "M",
    "codeCogInseeCommuneNaissance": "75002"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "est_boursier": true,
      "periode_versement_bourse": {
        "date_rentree": "2020-09-01",
        "duree": 12
      },
      "etablissement_etudes": {
        "nom_commune": "Bordeaux",
        "nom_etablissement": "Camille Jullian"
      },
      "echelon_bourse": {
        "echelon": "5",
        "echelon_bourse_regionale_provisoire": false
      },
      "email": "jean@dupont.fr"
    },
    "links": {
    },
    "meta": {
    }
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/cnous/etudiant_boursier/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>
* [france_connect_cnous.yml](france_connect_cnous.yml)

  Status `200`

  FranceConnect: Boursier échelon 5 (scope complet)

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "given_name": "Angela Claire Louise",
    "family_name": "DUBOIS",
    "birthdate": "1962-08-24",
    "gender": "female",
    "birthplace": "75107",
    "birthcountry": "99100",
    "preferred_username": "",
    "nomNaissance": "DUBOIS",
    "prenoms": "Angela Claire Louise",
    "anneeDateNaissance": 1962,
    "moisDateNaissance": 8,
    "jourDateNaissance": 24,
    "sexeEtatCivil": "F",
    "codeCogInseeCommuneNaissance": "75007"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "est_boursier": true,
      "periode_versement_bourse": {
        "date_rentree": "2020-09-01",
        "duree": 12
      },
      "etablissement_etudes": {
        "nom_commune": "Bordeaux",
        "nom_etablissement": "Camille Jullian"
      },
      "echelon_bourse": {
        "echelon": "5",
        "echelon_bourse_regionale_provisoire": false
      },
      "email": "wossewodda-3728@yopmail.com "
    },
    "links": {
    },
    "meta": {
    }
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/cnous/etudiant_boursier/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>