class CreateSignatureBiometries < ActiveRecord::Migration[5.1]
  def change
    create_table :signature_biometries do |t|
      t.belongs_to :biometry
      t.string :filename
      t.timestamps
    end
  end
end
