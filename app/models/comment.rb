class Comment < ApplicationRecord
  belongs_to :ticket
     
  validates :text, presence: true
end
