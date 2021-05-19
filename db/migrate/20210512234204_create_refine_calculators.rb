class CreateRefineCalculators < ActiveRecord::Migration[6.1]
  def change
    create_table :refine_calculators do |t|
      t.string :item
      t.float :value
      t.float :refined
      t.integer :refine_fee
      t.integer :transmutation_fee
      t.string :url_image

      t.timestamps
    end
  end
end
