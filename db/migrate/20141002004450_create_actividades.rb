class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.string :nombre
      t.string :description
      t.string :fecha

      t.timestamps
    end
  end
end
