# Statut étudiant boursier
* [404.yml](404.yml)

  Status `404`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "ine": "1234567404G"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "error": "not_found",
    "reason": "Scholarship not found",
    "message": "Aucun étudiant boursier n'a pu être trouvé avec les critères de recherche fournis"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'ine=1234567404G' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [500.yaml](500.yaml)

  Status `500`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "ine": "1234567500G"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "error": "error",
    "reason": "Internal server error",
    "message": "Une erreur interne s'est produite, l'équipe a été prévenue."
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'ine=1234567500G' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [503.yaml](503.yaml)

  Status `503`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "ine": "1234567503G"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "error": "network_error",
    "reason": "timeout of 10000 ms exceeded",
    "message": "Une erreur est survenue lors de l'appel au fournisseur de donnée"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'ine=1234567503G' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [civility.yml](civility.yml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nom": "Pagnol",
    "prenoms": "Marcel",
    "dateDeNaissance": "1998-07-12",
    "lieuDeNaissance": "Paris",
    "sexe": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "nom": "Pagnol",
    "prenom": "Marcel",
    "prenom2": "",
    "dateNaissance": "1998-07-12",
    "lieuNaissance": "Paris",
    "sexe": "M",
    "boursier": true,
    "echelonBourse": "5",
    "email": "marcel@pagnol.fr",
    "dateDeRentree": "2020-09-01",
    "dureeVersement": 12,
    "statut": 0,
    "statutLibelle": "définitif",
    "villeEtudes": "Evry",
    "etablissement": "ENSIIE"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'nom=Pagnol' -d 'prenoms=Marcel' -d 'dateDeNaissance=1998-07-12' -d 'lieuDeNaissance=Paris' -d 'sexe=M' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [france_connect_cnous.yml](france_connect_cnous.yml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "given_name": "Jean",
    "family_name": "MARTIN",
    "birthdate": "2001-01-01",
    "gender": "male",
    "birthplace": "75002",
    "birthcountry": "99100",
    "preferred_username": "jmartin_cnous"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "nom": "DUPONT",
    "prenom": "Jean",
    "prenom2": "Martin",
    "dateNaissance": "2000-01-01",
    "lieuNaissance": "Paris",
    "sexe": "M",
    "boursier": true,
    "echelonBourse": "5",
    "email": "jean@dupont.fr",
    "dateDeRentree": "2020-09-01",
    "dureeVersement": 12,
    "statut": 0,
    "statutLibelle": "définitif",
    "villeEtudes": "Bordeaux",
    "etablissement": "Camille Jullian"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'given_name=Jean' -d 'family_name=MARTIN' -d 'birthdate=2001-01-01' -d 'gender=male' -d 'birthplace=75002' -d 'birthcountry=99100' -d 'preferred_username=jmartin_cnous' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [france_connect_cnous_with_less_scopes.yml](france_connect_cnous_with_less_scopes.yml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "given_name": "Jean",
    "family_name": "MARTIN",
    "birthdate": "2001-01-01",
    "gender": "male",
    "birthplace": "75002",
    "birthcountry": "99100",
    "preferred_username": "jmartin_cnous_with_less_scopes"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "boursier": true,
    "echelonBourse": "5",
    "email": "jean@dupont.fr",
    "dateDeRentree": "2020-09-01",
    "dureeVersement": 12,
    "statut": 0,
    "statutLibelle": "définitif",
    "villeEtudes": "Bordeaux",
    "etablissement": "Camille Jullian"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'given_name=Jean' -d 'family_name=MARTIN' -d 'birthdate=2001-01-01' -d 'gender=male' -d 'birthplace=75002' -d 'birthcountry=99100' -d 'preferred_username=jmartin_cnous_with_less_scopes' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
* [ine.yml](ine.yml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "ine": "1234567890G"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "nom": "Durand",
    "prenom": "Géraldine",
    "prenom2": "",
    "dateNaissance": "1990-01-01",
    "lieuNaissance": "Paris",
    "sexe": "F",
    "boursier": true,
    "echelonBourse": "6",
    "email": "geraldine@@durand.fr",
    "dateDeRentree": "2018-09-01",
    "dureeVersement": 12,
    "statut": 0,
    "statutLibelle": "définitif",
    "villeEtudes": "Marseille",
    "etablissement": "Pagnol"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'ine=1234567890G' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/etudiants-boursiers"
  ```

  </p>
  </details>
