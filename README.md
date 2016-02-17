# README

-LES BESOINS

Creer une application rails  qui utilise postgresql.
Elle devra etre responsive ,et comporter 5 pages(pas plus) :
	_People (liste des personnes)
	_Groups (liste des groupes)
	_Group_edit (mettre a jour un groupe)
	_Group_new (creer un groupe)
	_Organisation (voir les groupes enrichis des personnes)

-LES OBJETS:

			Personne:
				nom
				email
				tel
				group_id
				sensei

			Group:
				nom
				salle
				tâche

-LES FEATURES

	Les personnes seront "created!" via la seed
	Les groupes seront "created!" via le formulaire en ligne
	Sur la page  "Organisation" un bouton vas enrichir les groupes avec les personnes de manière aléatoire

