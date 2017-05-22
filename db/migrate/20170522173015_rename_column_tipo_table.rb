class RenameColumnTipoTable < ActiveRecord::Migration[5.0]
  def change
	rename_column :tipos, :grupoId, :grupo_id
  end
end
