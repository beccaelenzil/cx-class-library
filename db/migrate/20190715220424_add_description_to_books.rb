class AddDescriptionToBooks < ActiveRecord::Migration[5.2]
  def change
    # Rails loves both symbols and implicit parens
    add_column :books, :description, :string
  end
end
