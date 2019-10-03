class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 } # nameカラムの値が存在すること（空文字でないこと）を検証する
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
