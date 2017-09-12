class ModifyFieldContactsName < ActiveRecord::Migration[5.0]
  def change
    change_column :contacts, :name, :string
  end
end
