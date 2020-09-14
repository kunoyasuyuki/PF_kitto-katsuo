class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :user
  attr_accessor :token
end