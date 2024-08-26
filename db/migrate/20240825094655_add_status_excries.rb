class AddStatusExcries < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :status, :string, default: "pending"
    add_column :exercises, :code_sumbit, :text
  end
end
