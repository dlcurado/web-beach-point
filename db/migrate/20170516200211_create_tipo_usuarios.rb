class CreateTipoUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_usuarios do |t|
      t.string :tipo
      t.text :descricao

      t.timestamps
    end
  end
end
