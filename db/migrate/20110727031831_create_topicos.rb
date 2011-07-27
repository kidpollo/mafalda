class CreateTopicos < ActiveRecord::Migration
  def self.up
    create_table :topicos do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :topicos
  end
end
