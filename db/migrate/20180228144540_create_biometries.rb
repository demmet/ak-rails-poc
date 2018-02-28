class CreateBiometries < ActiveRecord::Migration[5.1]
  def change
    create_table :biometries do |t|
      t.belongs_to :person

      t.integer :biometry_type
      t.timestamps
    end
  end
end
