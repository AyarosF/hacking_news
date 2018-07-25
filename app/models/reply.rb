class Reply < ApplicationRecord
  #un commentaire de commentaire est fait sur un commentaire par un user 
  belongs_to :user
  belongs_to :comment
end
