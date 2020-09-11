class User < ApplicationRecord
  has_many :tickets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # メールアドレスのデータベース保存前に小文字にする。
  before_save { self.email = email.downcase }
 end
end
