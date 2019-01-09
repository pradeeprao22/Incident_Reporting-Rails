class AddOtherToDetaileds < ActiveRecord::Migration[5.2]
  def change
    add_column :detaileds, :otherfortag, :string
  end
end
