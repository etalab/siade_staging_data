# Bénéficiaires effectifs
* __Retour par défaut de l'API__

  Lors d'un appel avec des paramètres valides ne correspondant à aucun des examples dans ce dossier, l'API renvoie systématiquement cette réponse :


  <details><summary>Réponse par défault de l'API</summary>
  <p>

  ```json
  {
    "data": [
      {
        "data": {
          "nom": "MARTIN",
          "nom_usage": "DUBOIS",
          "prenoms": [
            "dummy"
          ],
          "date_naissance": {
            "annee": "1990",
            "mois": "01"
          },
          "modalites": {
            "detention_part_directe": true,
            "parts_directes_pleine_propriete": 42.0,
            "parts_directes_nue_propriete": 9.0,
            "detention_part_indirecte": true,
            "parts_indirectes_indivision": 0.0,
            "parts_indirectes_indivision_pleine_propriete": 0.0,
            "parts_indirectes_indivision_nue_propriete": 0.0,
            "parts_indirectes_personnes_morales": 0.0,
            "parts_indirectes_personnes_morales_pleine_propriete": 0.0,
            "parts_indirectes_personnes_morales_nue_propriete": 0.0,
            "detention_part_totale": 51.0,
            "detention_vote_directe": true,
            "vote_directe_pleine_propriete": 51.0,
            "vote_directe_nue_propriete": 0.0,
            "vote_directe_usufruit": 0.0,
            "detention_vote_indirecte": true,
            "vote_indirecte_indivision": 0.0,
            "vote_indirecte_indivision_pleine_propriete": 0.0,
            "vote_indirecte_indivision_nue_propriete": 0.0,
            "vote_indirecte_indivision_usufruit": 0.0,
            "vote_indirecte_personnes_morales": 0.0,
            "vote_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vote_indirecte_personnes_morales_nue_propriete": 0.0,
            "vote_indirecte_personnes_morales_usufruit": 0.0,
            "vocation_titulaire_directe_pleine_propriete": 0.0,
            "vocation_titulaire_directe_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_indivision": 0.0,
            "vocation_titulaire_indirecte_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_nue_propriete": 0.0,
            "detention_vote_total": 0.0,
            "detention_pouvoir_decision_ag": true,
            "detention_pouvoir_nommage_membres_conseil_admin": true,
            "detention_autres_moyens_controle": true,
            "representant_legal": true,
            "representant_legal_placement_sans_gestion_delegue": true
          }
        },
        "links": {
        },
        "meta": {
        }
      }
    ],
    "meta": {
      "count": 1
    },
    "links": {
    }
  }
  ```

  </p>
  </details>

* [200.yaml](200.yaml)

  Status `200`

  

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "siren": "552049447"
  }
  ```

  </p>
  </details>

  <details><summary>Réponse API</summary>
  <p>

  ```json
  {
    "data": [
      {
        "data": {
          "nom": "MARTIN",
          "nom_usage": null,
          "prenoms": [
            "JEAN",
            "JACQUES"
          ],
          "date_naissance": {
            "annee": "1989",
            "mois": "01"
          },
          "modalites": {
            "detention_part_directe": true,
            "parts_directes_pleine_propriete": 49.0,
            "parts_directes_nue_propriete": 0.0,
            "detention_part_indirecte": false,
            "parts_indirectes_indivision": 0.0,
            "parts_indirectes_indivision_pleine_propriete": 0.0,
            "parts_indirectes_indivision_nue_propriete": 0.0,
            "parts_indirectes_personnes_morales": 0.0,
            "parts_indirectes_personnes_morales_pleine_propriete": 0.0,
            "parts_indirectes_personnes_morales_nue_propriete": 0.0,
            "detention_part_totale": 49.0,
            "detention_vote_directe": true,
            "vote_directe_pleine_propriete": 49.0,
            "vote_directe_nue_propriete": 0.0,
            "vote_directe_usufruit": 0.0,
            "detention_vote_indirecte": false,
            "vote_indirecte_indivision": 0.0,
            "vote_indirecte_indivision_pleine_propriete": 0.0,
            "vote_indirecte_indivision_nue_propriete": 0.0,
            "vote_indirecte_indivision_usufruit": 0.0,
            "vote_indirecte_personnes_morales": 0.0,
            "vote_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vote_indirecte_personnes_morales_nue_propriete": 0.0,
            "vote_indirecte_personnes_morales_usufruit": 0.0,
            "vocation_titulaire_directe_pleine_propriete": 0.0,
            "vocation_titulaire_directe_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_indivision": 0.0,
            "vocation_titulaire_indirecte_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_nue_propriete": 0.0,
            "detention_vote_total": 0.0,
            "detention_pouvoir_decision_ag": false,
            "detention_pouvoir_nommage_membres_conseil_admin": false,
            "detention_autres_moyens_controle": false,
            "representant_legal_placement_sans_gestion_delegue": false,
            "representant_legal": false
          }
        },
        "links": {
        },
        "meta": {
        }
      },
      {
        "data": {
          "nom": "PARIS",
          "nom_usage": null,
          "prenoms": [
            "LOUIS",
            "ANDRE"
          ],
          "date_naissance": {
            "annee": "1990",
            "mois": "08"
          },
          "modalites": {
            "detention_part_directe": true,
            "parts_directes_pleine_propriete": 51.0,
            "parts_directes_nue_propriete": 0.0,
            "detention_part_indirecte": false,
            "parts_indirectes_indivision": 0.0,
            "parts_indirectes_indivision_pleine_propriete": 0.0,
            "parts_indirectes_indivision_nue_propriete": 0.0,
            "parts_indirectes_personnes_morales": 0.0,
            "parts_indirectes_personnes_morales_pleine_propriete": 0.0,
            "parts_indirectes_personnes_morales_nue_propriete": 0.0,
            "detention_part_totale": 51.0,
            "detention_vote_directe": true,
            "vote_directe_pleine_propriete": 51.0,
            "vote_directe_nue_propriete": 0.0,
            "vote_directe_usufruit": 0.0,
            "detention_vote_indirecte": false,
            "vote_indirecte_indivision": 0.0,
            "vote_indirecte_indivision_pleine_propriete": 0.0,
            "vote_indirecte_indivision_nue_propriete": 0.0,
            "vote_indirecte_indivision_usufruit": 0.0,
            "vote_indirecte_personnes_morales": 0.0,
            "vote_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vote_indirecte_personnes_morales_nue_propriete": 0.0,
            "vote_indirecte_personnes_morales_usufruit": 0.0,
            "vocation_titulaire_directe_pleine_propriete": 0.0,
            "vocation_titulaire_directe_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_indivision": 0.0,
            "vocation_titulaire_indirecte_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_nue_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_pleine_propriete": 0.0,
            "vocation_titulaire_indirecte_personnes_morales_nue_propriete": 0.0,
            "detention_vote_total": 0.0,
            "detention_pouvoir_decision_ag": false,
            "detention_pouvoir_nommage_membres_conseil_admin": false,
            "detention_autres_moyens_controle": false,
            "representant_legal_placement_sans_gestion_delegue": false,
            "representant_legal": false
          }
        },
        "links": {
        },
        "meta": {
        }
      }
    ],
    "meta": {
      "count": 2
    },
    "links": {
    }
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "Authorization: Bearer $token" \
    -G -d 'recipient=10000001700010' -d 'context=Contexte+de+la+requ%C3%AAte' -d 'object=Objet+de+la+requ%C3%AAte' \
    --url "https://staging.entreprise.api.gouv.fr/v3/inpi/rne/unites_legales/open_data/552049447/beneficiaires_effectifs"
  ```

  </p>
  </details>
* [404.yaml](404.yaml)

  Status `404`

  

  <details><summary>Paramètres</summary>
  <p>

  ```json
  {
    "siren": "example"
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
        "title": "dummy",
        "detail": "dummy",
        "code": "dummy"
      }
    ]
  }
  ```

  </p>
  </details>

  <details><summary>Commande cURL</summary>
  <p>

  ```bash
  curl -H "Authorization: Bearer $token" \
    -G -d 'recipient=10000001700010' -d 'context=Contexte+de+la+requ%C3%AAte' -d 'object=Objet+de+la+requ%C3%AAte' \
    --url "https://staging.entreprise.api.gouv.fr/v3/inpi/rne/unites_legales/open_data/example/beneficiaires_effectifs"
  ```

  </p>
  </details>
