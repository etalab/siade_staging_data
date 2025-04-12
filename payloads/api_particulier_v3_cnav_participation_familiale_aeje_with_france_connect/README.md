# [FranceConnect] Participation familiale EAJE
* [404.yaml](404.yaml)

  Status `404`

  Dossier non trouvé

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "nomNaissance": "LEFEBVRE",
    "codeCogInseeCommuneNaissance": "00404",
    "codeCogInseePaysNaissance": "99100",
    "sexeEtatCivil": "F"
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
        "title": "Dossier allocataire absent CNAV",
        "detail": "Le dossier allocataire n'a pas été trouvé auprès de la CNAV.",
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
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/dss/participation_familiale_aeje/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>
* [fake_france_connect_cnaf.yml](fake_france_connect_cnaf.yml)

  Status `200`

  Cas de test pour QFv2 avec jeton FranceConnect.
Les données proviennent de [nos propres jetons FranceConnect de test](../france_connect/cnaf_qfv2.yml).
L'endpoint est appellé avec le jeton FranceConnect + le recipient.

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "prenoms": [
      "Georges"
    ],
    "nomNaissance": "CNAF",
    "nomUsage": "MARTIN",
    "anneeDateNaissance": 2002,
    "moisDateNaissance": 1,
    "jourDateNaissance": 1,
    "sexeEtatCivil": "M",
    "codeCogInseeCommuneNaissance": "75002",
    "codeCogInseePaysNaissance": "99100"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "allocataires": [
        {
          "nom_naissance": "CNAF",
          "nom_usage": "MARTIN",
          "prenoms": "Georges",
          "date_naissance": "1975-02-18",
          "sexe": "M",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "enfants": [
        {
          "nom_naissance": "CNAF",
          "nom_usage": null,
          "prenoms": "Loic Thierry Simon",
          "date_naissance": "2004-01-20",
          "sexe": "M",
          "code_cog_insee_commune_naissance": "75111"
        },
        {
          "nom_naissance": "CNAF",
          "nom_usage": null,
          "prenoms": "Schildegonde Gertrude Gontrand",
          "date_naissance": "200&-04-23",
          "sexe": "F",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "adresse": {
        "destinataire": "Madame Angela Claire Louise DUBOIS",
        "complement_information": null,
        "complement_information_geographique": null,
        "numero_libelle_voie": "24 avenue de rivoli",
        "lieu_dit": null,
        "code_postal_ville": "75002",
        "pays": "FRANCE"
      },
      "parametres_calcul_participation_familiale": {
        "nombre_enfants_a_charge": 2,
        "nombre_enfants_beneficiaire_AEEH": 1,
        "base_ressources_annuelles": {
          "valeur": 16123,
          "annee_calcul": 2024
        }
      }
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
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/dss/participation_familiale_aeje/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>
* [fake_france_connect_cnaf_2.yml](fake_france_connect_cnaf_2.yml)

  Status `200`

  Cas de test pour QFv2 avec jeton FranceConnect.
Les données proviennent de [nos propres jetons FranceConnect de test](../france_connect/cnaf_qfv2.yml).
L'endpoint est appellé avec le jeton FranceConnect + le recipient.

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "prenoms": [
      "Thomas"
    ],
    "nomNaissance": "Delatour",
    "nomUsage": "Delamouette",
    "anneeDateNaissance": 1994,
    "moisDateNaissance": 4,
    "jourDateNaissance": 16,
    "sexeEtatCivil": "M",
    "codeCogInseeCommuneNaissance": "75111",
    "codeCogInseePaysNaissance": "99100"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "allocataires": [
        {
          "nom_naissance": "CNAF",
          "nom_usage": "MARTIN",
          "prenoms": "Georges",
          "date_naissance": "1975-02-18",
          "sexe": "M",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "enfants": [
        {
          "nom_naissance": "CNAF",
          "nom_usage": null,
          "prenoms": "Loic Thierry Simon",
          "date_naissance": "2004-01-20",
          "sexe": "M",
          "code_cog_insee_commune_naissance": "75111"
        },
        {
          "nom_naissance": "CNAF",
          "nom_usage": null,
          "prenoms": "Schildegonde Gertrude Gontrand",
          "date_naissance": "200&-04-23",
          "sexe": "F",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "adresse": {
        "destinataire": "Madame Angela Claire Louise DUBOIS",
        "complement_information": null,
        "complement_information_geographique": null,
        "numero_libelle_voie": "24 avenue de rivoli",
        "lieu_dit": null,
        "code_postal_ville": "75002",
        "pays": "FRANCE"
      },
      "parametres_calcul_participation_familiale": {
        "nombre_enfants_a_charge": 2,
        "nombre_enfants_beneficiaire_AEEH": 1,
        "base_ressources_annuelles": {
          "valeur": 16123,
          "annee_calcul": 2024
        }
      }
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
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/dss/participation_familiale_aeje/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>
* [france_connect_cnaf.yml](france_connect_cnaf.yml)

  Status `200`

  Cas de test pour QFv2 avec jeton FranceConnect.
Les données proviennent des jetons de l'environnement de test FranceConnect.
L'endpoint est appellé avec le jeton FranceConnect + le recipient.

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "prenoms": [
      "Angela",
      "Claire",
      "Louise"
    ],
    "nomNaissance": "DUBOIS",
    "anneeDateNaissance": 1962,
    "moisDateNaissance": 8,
    "jourDateNaissance": 24,
    "sexeEtatCivil": "F",
    "codeCogInseeCommuneNaissance": "75107",
    "codeCogInseePaysNaissance": "99100"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": {
      "allocataires": [
        {
          "nom_naissance": "DUBOIS",
          "nom_usage": null,
          "prenoms": "Angela Claire Louise",
          "date_naissance": "1988-01-20",
          "sexe": "F",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "enfants": [
        {
          "nom_naissance": "DUBOIS",
          "nom_usage": null,
          "prenoms": "Loic Thierry Simon",
          "date_naissance": "2004-01-20",
          "sexe": "M",
          "code_cog_insee_commune_naissance": "75111"
        }
      ],
      "adresse": {
        "destinataire": "Madame Angela Claire Louise DUBOIS",
        "complement_information": null,
        "complement_information_geographique": null,
        "numero_libelle_voie": "24 avenue de rivoli",
        "lieu_dit": null,
        "code_postal_ville": "75002",
        "pays": "FRANCE"
      },
      "parametres_calcul_participation_familiale": {
        "nombre_enfants_a_charge": 1,
        "nombre_enfants_beneficiaire_AEEH": 1,
        "base_ressources_annuelles": {
          "valeur": 98342,
          "annee_calcul": 2024
        }
      }
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
  curl -H "Authorization: Bearer $token_france_connect" --url "https://staging.particulier.api.gouv.fr/v3/dss/participation_familiale_aeje/france_connect?recipient=13002526500013"
  ```

  </p>
  </details>
