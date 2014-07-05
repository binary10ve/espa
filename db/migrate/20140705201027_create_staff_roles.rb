class CreateStaffRoles < ActiveRecord::Migration
  def change
    create_table :staff_roles do |t|
      t.integer :staff_id
      t.integer :role_id

      t.timestamps
    end
  end
end
