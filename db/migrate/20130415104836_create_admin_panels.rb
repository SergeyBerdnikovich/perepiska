class CreateAdminPanels < ActiveRecord::Migration
  def change
    create_table :admin_panels do |t|
      t.string :button_title
      t.string :site_url

      t.timestamps
    end
  end
end
