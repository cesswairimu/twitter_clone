class User < ActiveRecord::Base
  validates :jina, presence: true, length: { maximum: 20 }
  validates :pepe, presence: true, length: { maximum: 30 },
            uniqueness: true
  
end
