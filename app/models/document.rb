class Document < ApplicationRecord
  has_one_attached :img
  
  validates :title, presence: true
  validates :body, presence: true
end
