class User < ApplicationRecord
    has_secure_password
  
    before_save :downcase_email
  
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
    validates :password, length: { minimum: 8 }
    validates :password_confirmation, presence: true
  
    has_many :videos
    has_many :comments, through: :videos
  
    private
  
    def downcase_email
      self.email = email.downcase
    end
  end