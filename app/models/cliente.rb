class Cliente < ApplicationRecord
    has_many :animal, dependent: :destroy
    VALID_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email, presence: true, length: { minimum: 5 },
        format: { with: VALID_EMAIL }, uniqueness: true
    VALID_CPF = /[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}/
    validates :cpf, presence: true,
        format: {with: VALID_CPF}, uniqueness: true
end
