class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :class_name
      t.string :quarter
      t.string :instructor

      t.timestamps null: false
    end
  end
end
