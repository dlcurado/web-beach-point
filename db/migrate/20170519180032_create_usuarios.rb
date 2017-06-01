class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
		t.string   "nome",       limit: 35,  null: false
    	t.string   "email",      limit: 150, null: false
    	t.string   "senha",                  null: false
    	t.integer  "tipo_id",				 null: false
		t.timestamps
		t.datetime "created_at",             null: false
    	t.datetime "updated_at",             null: false
    end
  end
end
