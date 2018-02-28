class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      has_many :biometries
      t.string :username 
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
