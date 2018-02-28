class CreateFaceBiometries < ActiveRecord::Migration[5.1]
  def change
    create_table :face_biometries do |t|
      t.string :filename
      t.timestamps
    end
  end
end
