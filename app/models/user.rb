class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  validate :berkeley_email
  validates :username, presence: true
  validates_uniqueness_of :username, case_sensitive: false

  def update_without_password(params, *options)
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

  def berkeley_email
    if !email.match(/.*@berkeley.edu$/)
      errors.add :email, "must be a berkeley.edu email"
    end
  end

end
