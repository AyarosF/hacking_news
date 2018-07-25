class LinkComment < ActiveRecord::Migration[5.2]
  def change
    #migration permettant de lier la nouvelle table comments aux tables links et users existantes
    #un commentaire est fait sur un lien et par un utilisateur
    add_reference :comments, :link, foreign_key: true
    add_reference :comments, :user, foreign_key: true
  end
end
