# Statut revenu de solidarité active (RSA)
* [200_beneficiaire_majoration.yaml](200_beneficiaire_majoration.yaml)

  Status `200`

  ## Bénéficiaire avec majoration

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "MARTIN",
    "prenoms": [
      "SAMUEL"
    ],
    "anneeDateNaissance": 1980,
    "moisDateNaissance": 9,
    "jourDateNaissance": 20,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "est_beneficiaire": true,
      "avec_majoration": true,
      "date_debut_droit": "1992-11-20"
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
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=MARTIN' -d 'prenoms[]=SAMUEL' -d 'anneeDateNaissance=1980' -d 'moisDateNaissance=9' -d 'jourDateNaissance=20' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [200_beneficiaire_sans_majoration.yaml](200_beneficiaire_sans_majoration.yaml)

  Status `200`

  ## Bénéficiaire sans majoration

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "GONTRAND",
    "prenoms": [
      "YVES"
    ],
    "anneeDateNaissance": 1980,
    "moisDateNaissance": 9,
    "jourDateNaissance": 20,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "est_beneficiaire": true,
      "avec_majoration": false,
      "date_debut_droit": "1992-11-20"
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
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=GONTRAND' -d 'prenoms[]=YVES' -d 'anneeDateNaissance=1980' -d 'moisDateNaissance=9' -d 'jourDateNaissance=20' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [200_non_beneficiaire.yaml](200_non_beneficiaire.yaml)

  Status `200`

  ## Non bénéficiaire

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "LAGAFFE",
    "prenoms": [
      "GASTON"
    ],
    "anneeDateNaissance": 1980,
    "moisDateNaissance": 9,
    "jourDateNaissance": 20,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "est_beneficiaire": false,
      "avec_majoration": null,
      "date_debut_droit": null
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
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=LAGAFFE' -d 'prenoms[]=GASTON' -d 'anneeDateNaissance=1980' -d 'moisDateNaissance=9' -d 'jourDateNaissance=20' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [404.yaml](404.yaml)

  Status `404`

  ## Allocataire non trouvé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "DUBOCHE",
    "prenoms": [
      "JEROME"
    ],
    "anneeDateDaissance": 2002,
    "moisDateDaissance": 12,
    "jourDateDaissance": 5,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "errors": [
      {
        "code": "37003",
        "title": "Entité non trouvée",
        "detail": "Dossier allocataire inexistant. Le document ne peut être édité.",
        "source": null,
        "meta": {
          "provider": "CNAV"
        }
      }
    ]
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=DUBOCHE' -d 'prenoms[]=JEROME' -d 'anneeDateDaissance=2002' -d 'moisDateDaissance=12' -d 'jourDateDaissance=5' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [429.yaml](429.yaml)

  Status `429`

  ## Allocataire non trouvé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "DESFOUIN",
    "prenoms": [
      "René"
    ],
    "anneeDateDaissance": 2002,
    "moisDateDaissance": 12,
    "jourDateDaissance": 5,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "errors": [
      {
        "code": "00429",
        "title": "Trop de requêtes",
        "detail": "Vous avez effectué trop de requêtes",
        "source": null,
        "meta": {
        }
      }
    ]
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=DESFOUIN' -d 'prenoms[]=Ren%C3%A9' -d 'anneeDateDaissance=2002' -d 'moisDateDaissance=12' -d 'jourDateDaissance=5' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [502.yaml](502.yaml)

  Status `502`

  ## Allocataire non trouvé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "DELANOUE",
    "prenoms": [
      "Jean-Marie"
    ],
    "anneeDateDaissance": 2002,
    "moisDateDaissance": 12,
    "jourDateDaissance": 5,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "errors": [
      {
        "code": "37999",
        "title": "Erreur inconnue du fournisseur de données",
        "detail": "La réponse retournée par le fournisseur de données est invalide et inconnue de notre service. L'équipe technique a été notifiée de cette erreur pour investigation.",
        "source": null,
        "meta": {
          "provider": "CNAV"
        }
      }
    ]
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=DELANOUE' -d 'prenoms[]=Jean-Marie' -d 'anneeDateDaissance=2002' -d 'moisDateDaissance=12' -d 'jourDateDaissance=5' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>
* [504.yaml](504.yaml)

  Status `504`

  ## Allocataire non trouvé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "SITUDI",
    "prenoms": [
      "Clément"
    ],
    "anneeDateDaissance": 2002,
    "moisDateDaissance": 12,
    "jourDateDaissance": 5,
    "codeCogInseeCommuneNaissance": "08480",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "M"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "errors": [
      {
        "code": "37002",
        "title": "Intermédiaire hors-délai",
        "detail": "Temps d’attente d’une réponse du fournisseur de données écoulé.",
        "source": null,
        "meta": {
          "provider": "CNAV"
        }
      }
    ]
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "X-Api-Key: $token" \
    -G -d 'nomNaissance=SITUDI' -d 'prenoms[]=Cl%C3%A9ment' -d 'anneeDateDaissance=2002' -d 'moisDateDaissance=12' -d 'jourDateDaissance=5' -d 'codeCogInseeCommuneNaissance=08480' -d 'codeCogInseePaysNaissance=99100' -d 'sexeEtatCivil=M' \
    --url "https://staging.particulier.api.gouv.fr/v3/dss/revenu_solidarite_active/identite"
  ```

  </p>
  </details>