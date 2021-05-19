class AddTaxToRefineCalculator < ActiveRecord::Migration[6.1]
  def change
    add_column :refine_calculators, :tax, :float
  end
end
