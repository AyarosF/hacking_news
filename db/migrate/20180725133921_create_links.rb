class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :url
      #un utilisateur peut poster plusieurs liens - création de l'attribut user_id pour la table links 
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
