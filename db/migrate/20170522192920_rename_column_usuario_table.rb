class RenameColumnUsuarioTable < ActiveRecord::Migration[5.0]
  def change
	rename_column :usuarios, :tipoId, :tipo_id
  end
end
