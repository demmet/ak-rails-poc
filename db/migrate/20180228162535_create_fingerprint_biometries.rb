class CreateFingerprintBiometries < ActiveRecord::Migration[5.1]
  def change
    create_table :fingerprint_biometries do |t|
      t.integer :finger_index
      t.string :filename
      t.string :template
      t.timestamps
    end
  end
end
