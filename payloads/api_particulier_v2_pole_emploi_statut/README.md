# Statut demandeur d'emploi
* [200.yaml](200.yaml)

  Status `200`

  Personne insrite

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "identifiant": "default"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "identifiant": "default",
    "civilite": "M.",
    "nom": "DUPONT",
    "nomUsage": null,
    "prenom": "JEAN",
    "sexe": "Masculin",
    "codeCertificationCNAV": "VC",
    "libelleCategorieInscription": "PERSONNE SANS EMPLOI DISPONIBLE DUREE INDETERMINEE PLEIN TPS",
    "email": "jean.dupont@france.fr",
    "telephone": "0636656565",
    "telephone2": null,
    "adresse": {
      "INSEECommune": "75107",
      "codePostal": "75007",
      "ligneComplementAdresse": null,
      "ligneComplementDestinataire": "APPARTEMENT 42",
      "ligneComplementDistribution": null,
      "ligneNom": "DUPONT",
      "ligneVoie": "42 RUE DE LA PAIX",
      "localite": "75001 PARIS"
    },
    "dateNaissance": "1990-01-01",
    "dateInscription": "2020-01-01",
    "dateCessationInscription": null,
    "codeCategorieInscription": 1
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'identifiant=default' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/situations-pole-emploi"
  ```

  </p>
  </details>
* [404.yaml](404.yaml)

  Status `404`

  Personne non trouvée

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "identifiant": "not_found"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "error": "not_found",
    "reason": "Situation not found",
    "message": "Aucune situation Pôle Emploi n'a pu être trouvée avec les critères de recherche fournis"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'identifiant=not_found' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/situations-pole-emploi"
  ```

  </p>
  </details>
* [500.yaml](500.yaml)

  Status `500`

  Erreur interne du serveur

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "identifiant": "internal_error"
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
    -G -d 'identifiant=internal_error' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/situations-pole-emploi"
  ```

  </p>
  </details>
* [503.yaml](503.yaml)

  Status `503`

  Timeout - délai d'attente dépassé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "identifiant": "timeout"
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
    -G -d 'identifiant=timeout' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/situations-pole-emploi"
  ```

  </p>
  </details>
* [id_123456A_inscrit_toulouse.yaml](id_123456A_inscrit_toulouse.yaml)

  Status `200`

  Identifiant 123456A, inscrite, toulouse

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "identifiant": "123456A"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "identifiant": "123456A",
    "civilite": "MME",
    "nom": "Courtet",
    "nomUsage": null,
    "prenom": "Martine",
    "sexe": "Féminin",
    "codeCertificationCNAV": "VC",
    "libelleCategorieInscription": "PERSONNE SANS EMPLOI DISPONIBLE DUREE INDETERMINEE PLEIN TPS",
    "email": "martine.courtet@fake.fr",
    "telephone": "0601020304",
    "telephone2": null,
    "adresse": {
      "INSEECommune": "31555",
      "codePostal": "31400",
      "ligneComplementAdresse": null,
      "ligneComplementDestinataire": "APPARTEMENT 42",
      "ligneComplementDistribution": null,
      "ligneNom": "Courtet",
      "ligneVoie": "11 Rue Capus",
      "localite": "31400 TOULOUSE"
    },
    "dateNaissance": "1990-01-06",
    "dateInscription": "2024-01-01",
    "dateCessationInscription": null,
    "codeCategorieInscription": 1
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'identifiant=123456A' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/situations-pole-emploi"
  ```

  </p>
  </details>
