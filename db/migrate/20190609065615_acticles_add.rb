class ActiclesAdd < ActiveRecord::Migration
  def change
    add_column :articles, :member_only, :boolean
  end
end
