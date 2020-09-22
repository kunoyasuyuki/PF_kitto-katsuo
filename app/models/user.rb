class User < ApplicationRecord

  has_many :room_users, dependent: :destroy
  has_many :rooms, through: :room_users ,dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :tickets, dependent: :destroy
  has_many :orders, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :student_division
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
end