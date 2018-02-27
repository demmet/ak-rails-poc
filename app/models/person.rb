class Person < ApplicationRecord
  CPF_REGEX = /[0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2}/
  validates :full_name, presence: true
  validates :mother_name, presence: true
  validates :father_name, presence: true
  validates :date_of_birth, presence: true
  validates :cpf, presence: true, uniqueness: true,
    format: { with: CPF_REGEX }
  validates :address_cep, presence: true
  validates :address_street, presence: true
  validates :address_number, presence: true
end
