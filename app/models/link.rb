class Link < ApplicationRecord
  #un lien est posté par un useur et peut avoir plusieurs comments 
  belongs_to :user
  has_many :comments
end
