class AddStatusToNote < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :status, :string
  end
end
