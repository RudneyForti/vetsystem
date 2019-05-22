class Animal < ApplicationRecord
  belongs_to :cliente
  has_many :atendimento, dependent: :destroy
end
