class AddColumnToUsuario < ActiveRecord::Migration[5.0]
  def change
  	add_column :usuarios, :nome, :string, :limit=>35, :null=>false
  	add_column :usuarios, :email, :string, :limit=>150, :null=>false
	add_column :usuarios, :senha, :varchar, :null=>false
	add_column :usuarios, :tipoId, :integer

  	add_column :tipos, :nome, :string, :limit=>20, :null=>false
  	add_column :tipos, :descricao, :string, :limit=>244
  	add_column :tipos, :grupoId, :integer

  	add_column :grupos, :nome, :string, :limit=>20, :null=>false
  	add_column :grupos, :descricao, :string, :limit=>244

  end
end
