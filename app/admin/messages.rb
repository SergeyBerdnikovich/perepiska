ActiveAdmin.register Message do
  show do
    attributes_table do
      row :id
      row :email_from
      row :subject
      row :text
      row :email do |message|
        # message.email.email if message.email
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
