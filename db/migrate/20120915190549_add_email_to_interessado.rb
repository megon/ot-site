class AddEmailToInteressado < ActiveRecord::Migration
  def change
    add_column :interessados, :email, :string
  end
end
