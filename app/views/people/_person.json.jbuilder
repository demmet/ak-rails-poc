json.extract! person, :id, :full_name, :mother_name, :father_name, :date_of_birth, :cpf, :address_cep, :address_street, :address_number, :address_complement, :created_at, :updated_at
json.url person_url(person, format: :json)
