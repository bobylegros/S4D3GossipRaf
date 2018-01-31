#La classe CreateGossips hérite de ActiveRecord
class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    #La table va avoir plusieurs colonnes
    create_table :gossips do |t|
      #Avant la première colonne il en une qui contient les id. Donc première ligne à l'id 1...
      #On cré une nouvelle colonne qui prendra une string et qui s'appel "anonimous_autor"
      t.string :anonimous_autor
      t.string :content
      #On cré 2 colones, "created at" et "updated at"
      t.timestamps
    end
  end
end
