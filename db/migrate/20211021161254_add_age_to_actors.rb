class AddAgeToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :age, :string
  end
end
