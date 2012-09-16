class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|

      t.timestamps
    end
  end
end
