class Animal < ApplicationRecord
  belongs_to :cliente
  has_many :atendimento, dependent: :destroy
  
  validates_presence_of :nome, message: 'não pode ser deixado em branco'
  validates_presence_of :especie, message: 'não pode ser deixado em branco'
  validates_presence_of :raca, message: 'Não pode ser deixado em branco'

end
