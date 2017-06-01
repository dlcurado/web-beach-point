class CreateTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos do |t|
	   	t.string   "nome",       limit: 20,  null: false
    	t.string   "descricao",  limit: 244
    	t.integer  "grupo_id",				 null: false
    	t.timestamps
		t.datetime "created_at",             null: false
    	t.datetime "updated_at",             null: false
	end
  end
end
