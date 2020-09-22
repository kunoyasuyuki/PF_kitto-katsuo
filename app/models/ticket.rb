class Ticket < ApplicationRecord
   belongs_to :user
   has_many :orders, dependent: :destroy
   has_one_attached :image, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :rooms, dependent: :destroy
   
   extend ActiveHash::Associations::ActiveRecordExtensions
      
   belongs_to_active_hash :category
       
   #空の投稿を保存できないようにする
   with_options presence: true do
    validates :image
    validates :name
    validates :introduction
   end
    
   #ジャンルの選択が「--」の時は保存できないようにする
    validates :category_id , numericality: { other_than: 1 } do
    end
  end
