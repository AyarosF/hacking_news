class Comment < ApplicationRecord
  #un commentaire est fait sur un lien, par un user et peut avoir plusieurs commentaires
  belongs_to :link
  belongs_to :user
  has_many :replies
end
