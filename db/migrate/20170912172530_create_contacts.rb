class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text    :name
      t.string  :email
      t.string  :phone
      t.text    :message

      t.timestamps
    end
  end
end
