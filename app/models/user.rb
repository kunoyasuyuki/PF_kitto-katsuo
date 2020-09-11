class User < ApplicationRecord
  has_many :tickets
  belongs_to :user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :student_division
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end