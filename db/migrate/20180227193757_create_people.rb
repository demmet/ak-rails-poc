class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :mother_name
      t.string :father_name
      t.date :date_of_birth
      t.string :cpf
      t.string :address_cep
      t.string :address_street
      t.integer :address_number
      t.string :address_complement

      t.timestamps
    end
  end
end
