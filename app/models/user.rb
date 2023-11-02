class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "L'adresse email n'est pas valide" }
      
    validates :password, presence: true, length: { minimum: 6, maximum: 20 }
    end
