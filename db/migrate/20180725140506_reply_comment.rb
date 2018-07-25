class ReplyComment < ActiveRecord::Migration[5.2]
  def change
    #migration permettant de lier la nouvelle table replies aux tables comments et users existantes
    #un commentaire de commentaire est fait sur un commentaire et par un utilisateur
    add_reference :replies, :user, foreign_key: true
    add_reference :replies, :comment, foreign_key: true
  end
end
