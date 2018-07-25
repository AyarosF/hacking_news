class User < ApplicationRecord
  #un user peut poster plusieurs liens et faire plusieurs commentaires (comments) et commentaires de commentaires (replies)
  has_many :links
  has_many :comments
  has_many :replies
end
