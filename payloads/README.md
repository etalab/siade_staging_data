# Payloads

Les chemins sans lien ne possèdent pas de payload: l'environnement de test
génère une payload par défaut basée sur la spécification OpenAPI associée.

## API Particulier

* [Service de vérification de l'avis d'impôt sur le revenu](api_particulier_v2_dgfip_svair) (`/v2/avis-imposition`)
* [Quotient familial CAF](api_particulier_v2_cnaf_quotient_familial) (`/v2/composition-familiale`)
* [Statut demandeur d'emploi](api_particulier_v2_pole_emploi_statut) (`/v2/situations-pole-emploi`)
* [Statut étudiant](api_particulier_v2_mesri_student_status) (`/v2/etudiants`)
* [Statut étudiant boursier](api_particulier_v2_cnous_student_scholarship) (`/v2/etudiants-boursiers`)

## API Entreprise v3+

* [Attestation de vigilance](api_entreprise_v3_acoss_attestations_sociales) (`/v3/urssaf/unites_legales/{siren}/attestation_vigilance`)
* Certification RGE (`/v3/ademe/etablissements/{siret}/certification_rge`)
* 3 derniers bilans annuels (`/v3/banque_de_france/unites_legales/{siren}/bilans`)
* Attestation de cotisations congés payés & chômage-intempéries (`/v3/cnetp/unites_legales/{siren}/attestation_cotisations_conges_payes_chomage_intemperies`)
* Immatriculation EORI (`/v3/douanes/etablissements/{siret_or_eori}/immatriculations_eori`)
* [Attestation fiscale](api_entreprise_v3_dgfip_attestations_fiscales) (`/v3/dgfip/unites_legales/{siren}/attestation_fiscale`)
* Chiffre d'affaires (`/v3/dgfip/etablissements/{siret}/chiffres_affaires`)
* Liasses fiscales (`/v3/dgfip/unites_legales/{siren}/liasses_fiscales/{year}`)
* Données association (`/v4/djepva/api-association/associations/{siren_or_rna}`)
* Données association en open data (`/v4/djepva/api-association/associations/open_data/{siren_or_rna}`)
* N°TVA intracommunautaire français (`/v3/european_commission/unites_legales/{siren}/numero_tva`)
* Conventions collectives (`/v3/fabrique_numerique_ministeres_sociaux/etablissements/{siret}/conventions_collectives`)
* Carte professionnelle travaux publics (`/v3/fntp/unites_legales/{siren}/carte_professionnelle_travaux_publics`)
* Extrait RCS (`/v3/infogreffe/rcs/unites_legales/{siren}/extrait_kbis`)
* Mandataires sociaux (`/v3/infogreffe/rcs/unites_legales/{siren}/mandataires_sociaux`)
* Actes (`/v3/inpi/unites_legales/{siren}/actes`)
* Brevets déposés (`/v3/inpi/unites_legales/{siren}/brevets`)
* Marques déposées (`/v3/inpi/unites_legales/{siren}/marques`)
* Modèles déposés (`/v3/inpi/unites_legales/{siren}/modeles`)
* Adresse établissement (`/v3/insee/sirene/etablissements/{siret}/adresse`)
* Adresse établissement diffusible (`/v3/insee/sirene/etablissements/diffusibles/{siret}/adresse`)
* [Données établissement](api_entreprise_v3_insee_etablissements) (`/v3/insee/sirene/etablissements/{siret}`)
* [Données établissement diffusible](api_entreprise_v3_insee_etablissements_diffusables) (`/v3/insee/sirene/etablissements/diffusibles/{siret}`)
* Données siège social diffusible (`/v3/insee/sirene/unites_legales/diffusibles/{siren}/siege_social`)
* Données siège social (`/v3/insee/sirene/unites_legales/{siren}/siege_social`)
* [Données unité légale](api_entreprise_v3_insee_unites_legales) (`/v3/insee/sirene/unites_legales/{siren}`)
* [Données unité légale diffusible](api_entreprise_v3_insee_unites_legales_diffusables) (`/v3/insee/sirene/unites_legales/diffusibles/{siren}`)
* Divers documents d'une association (`/v3/ministere_interieur/rna/associations/{siret_or_rna}/documents`)
* Données du RNA d'une association (`/v3/ministere_interieur/rna/associations/{siret_or_rna}`)
* Conformité cotisations de sécurité sociale agricole (`/v3/msa/etablissements/{siret}/conformite_cotisations`)
* Certification d'ingénierie OPQIBI (`/v3/opqibi/unites_legales/{siren}/certification_ingenierie`)
* Conformité cotisations retraite bâtiment (`/v3/probtp/etablissements/{siret}/attestation_cotisations_retraite`)
* Conformité cotisations retraite complémentaire (`/v3/probtp/etablissements/{siret}/conformite_cotisations_retraite`)
* Certification Qualibat (`/v3/qualibat/etablissements/{siret}/certification_batiment`)
* Données du RNM d'une entreprise artisanale (`/v3/cma_france/rnm/unites_legales/{siren}`)
* Attestation de vigilance (`/v4/urssaf/unites_legales/{siren}/attestation_vigilance`)
