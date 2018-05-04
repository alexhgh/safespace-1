ActiveAdmin.register User do

  permit_params :username, :email, :password, :role

  preserve_default_filters!

  remove_filter :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at,
                :last_sign_in_at, :current_sign_in_at, :current_sign_in_ip, :last_sign_in_ip,
                :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email

  filter :role, as: :select, collection: {'Admin' => 'admin', 'Student' => 'student', 'Counselor' => 'counselor'}
  filter :block_count, as: :select, collection: {0 => 0, 1 => 1, 2 => 2, 3 => 3}

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :role
    column :offline
    column :block_count
    column :banned
    column :created_at do |date|
      date.created_at.strftime('%b %e %Y %l:%M %P') if date.created_at
    end
    column :updated_at do |date|
      date.updated_at.strftime('%b %e %Y %l:%M %P') if date.updated_at
    end
    actions
  end

  form do |f|
    f.inputs "Users" do
      f.input :username
      f.input :email
      f.input :password
      f.input :role, as: :select, collection: {'Admin' => 'admin', 'Student' => 'student', 'Counselor' => 'counselor'}
    end
    f.actions
  end

  controller do
    def update
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end
  end

end
