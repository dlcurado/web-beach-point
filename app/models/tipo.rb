class Tipo < ApplicationRecord
	belongs_to :grupo
	has_many :usuarios
end
