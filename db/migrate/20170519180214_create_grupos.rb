class CreateGrupos < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos do |t|
    	t.string   "nome",       limit: 20,  null: false
    	t.string   "descricao",  limit: 244
		t.datetime "created_at",             null: false
    	t.datetime "updated_at",             null: false
    	t.timestamps
    end
  end
end
