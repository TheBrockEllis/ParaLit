class AddRowOrderToPages < ActiveRecord::Migration
  def change
    rename_column :pages, :sequence, :row_order
  end
end
