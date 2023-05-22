# Complémentaire santé solidaire
* [200-cas1.yaml](200-cas1.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99101",
    "sexe": "M",
    "nomUsage": "PIERRE",
    "prenoms": [
      "PIERRE",
      "PAUL"
    ],
    "anneeDateDeNaissance": 1970,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_avec_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99101' -d 'sexe=M' -d 'nomUsage=PIERRE' -d 'prenoms[]=PIERRE' -d 'prenoms[]=PAUL' -d 'anneeDateDeNaissance=1970' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas2.yaml](200-cas2.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99102",
    "sexe": "F",
    "nomUsage": "SABER",
    "prenoms": [
      "SABER",
      "BRIGITTE"
    ],
    "anneeDateDeNaissance": 1970,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_avec_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99102' -d 'sexe=F' -d 'nomUsage=SABER' -d 'prenoms[]=SABER' -d 'prenoms[]=BRIGITTE' -d 'anneeDateDeNaissance=1970' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas3.yaml](200-cas3.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99103",
    "sexe": "M",
    "nomUsage": "JEROME",
    "prenoms": [
      "JEROME",
      "ANTHONY"
    ],
    "anneeDateDeNaissance": 1980,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_avec_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99103' -d 'sexe=M' -d 'nomUsage=JEROME' -d 'prenoms[]=JEROME' -d 'prenoms[]=ANTHONY' -d 'anneeDateDeNaissance=1980' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas4.yaml](200-cas4.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99104",
    "sexe": "F",
    "nomUsage": "GERALDINE",
    "prenoms": [
      "GERALDINE",
      "ANTOINETTE"
    ],
    "anneeDateDeNaissance": 1980,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_avec_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99104' -d 'sexe=F' -d 'nomUsage=GERALDINE' -d 'prenoms[]=GERALDINE' -d 'prenoms[]=ANTOINETTE' -d 'anneeDateDeNaissance=1980' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas5.yaml](200-cas5.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99105",
    "sexe": "M",
    "nomUsage": "PHILIPPE",
    "prenoms": [
      "PHILIPPE",
      "CLAUDE"
    ],
    "anneeDateDeNaissance": 1990,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_sans_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99105' -d 'sexe=M' -d 'nomUsage=PHILIPPE' -d 'prenoms[]=PHILIPPE' -d 'prenoms[]=CLAUDE' -d 'anneeDateDeNaissance=1990' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas6.yaml](200-cas6.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99106",
    "sexe": "M",
    "nomUsage": "BERTRAND",
    "prenoms": [
      "BERTRAND",
      "JEAN"
    ],
    "anneeDateDeNaissance": 1990,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_sans_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99106' -d 'sexe=M' -d 'nomUsage=BERTRAND' -d 'prenoms[]=BERTRAND' -d 'prenoms[]=JEAN' -d 'anneeDateDeNaissance=1990' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas7.yaml](200-cas7.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99107",
    "sexe": "M",
    "nomUsage": "ALAIN",
    "prenoms": [
      "ALAIN",
      "JEROME"
    ],
    "anneeDateDeNaissance": 2000,
    "moisDateDeNaissance": 6
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "beneficiaire_sans_participation_financiere",
    "dateDebut": "2022-02-01",
    "dateFin": "2023-02-01"
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99107' -d 'sexe=M' -d 'nomUsage=ALAIN' -d 'prenoms[]=ALAIN' -d 'prenoms[]=JEROME' -d 'anneeDateDeNaissance=2000' -d 'moisDateDeNaissance=6' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [200-cas8.yaml](200-cas8.yaml)

  Status `200`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "recipient": "13002526500013",
    "codePaysLieuDeNaissance": "99108",
    "sexe": "M",
    "nomUsage": "ALEXIS",
    "prenoms": [
      "TRISTAN",
      "SERGE"
    ],
    "anneeDateDeNaissance": 1988,
    "moisDateDeNaissance": 8
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "status": "non_beneficiaire_css",
    "dateDebut": null,
    "dateFin": null
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'recipient=13002526500013' -d 'codePaysLieuDeNaissance=99108' -d 'sexe=M' -d 'nomUsage=ALEXIS' -d 'prenoms[]=TRISTAN' -d 'prenoms[]=SERGE' -d 'anneeDateDeNaissance=1988' -d 'moisDateDeNaissance=8' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [404.yaml](404.yaml)

  Status `404`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "codePaysLieuDeNaissance": "99404",
    "sexe": "F"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "error": "not_found",
    "reason": "Dossier allocataire inexistant. Le document ne peut être édité.",
    "message": "Dossier allocataire inexistant. Le document ne peut être édité."
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'codePaysLieuDeNaissance=99404' -d 'sexe=F' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [500.yaml](500.yaml)

  Status `500`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "codePaysLieuDeNaissance": "99500",
    "sexe": "F"
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
    -G -d 'codePaysLieuDeNaissance=99500' -d 'sexe=F' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>
* [503.yaml](503.yaml)

  Status `503`

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "codePaysLieuDeNaissance": "99503",
    "sexe": "F"
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
    -G -d 'codePaysLieuDeNaissance=99503' -d 'sexe=F' \
    --url "https://staging.particulier.api.gouv.fr/api/v2/complementaire-sante-solidaire"
  ```

  </p>
  </details>