class FixCardsColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :type, :category
  end
end
