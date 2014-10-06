class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :description

      t.timestamps
    end
  end
end
