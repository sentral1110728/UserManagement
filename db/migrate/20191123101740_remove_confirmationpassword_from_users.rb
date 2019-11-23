class RemoveConfirmationpasswordFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :confirmationPassword, :string
  end
end
