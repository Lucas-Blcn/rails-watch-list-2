class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
  # validates_associated :bookmarks

  # before_destroy { movies.destroy_all }

  # FONCTIONNALITE AJOUT DE PHOTO DE LA PART DE L'UTILISATEUR :
    # 1. Générer une migration pour ajouter une colonne photo
      # 1.1. Modifier le change dans le fichier de migration
      # 1.2. Run cette migration : rails db:migrate
    # 2. Modifier le formulaire lors de la création d'une liste (dans l'index)
      # 2.1. Choisir photo depuis son pc -> f.input :file
      # 2.2. Si pas de photo -> photo par défaut
end
