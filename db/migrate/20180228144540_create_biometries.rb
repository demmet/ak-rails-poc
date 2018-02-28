class CreateBiometries < ActiveRecord::Migration[5.1]
  def change
    create_table :biometries do |t|
      has_many :fingerprint_biometries
      has_one :face_biometry
      has_one :signature_biometry

      t.integer :biometry_type
      t.timestamps
    end
  end
end
