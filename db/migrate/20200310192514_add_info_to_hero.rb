class AddInfoToHero < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :birthday, :date
    add_column :heros, :movies, :string
  end
end
