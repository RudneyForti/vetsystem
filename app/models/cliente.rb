class Cliente < ApplicationRecord
    has_many :animal, dependent: :destroy
end
