class User < ActiveRecord::Base
  validates :jina, presence: true, length: { maximum: 20 }
  validates :pepe, presence: true, length: { maximum: 30 },
            uniqueness: true
  has_secure_password
  validates :password, presence:true, length:{ minimum: 8 }
  
end
