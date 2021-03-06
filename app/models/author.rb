class Author < ActiveRecord::Base
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true

  has_many :posts

  def self.authenticate(params)
    user = Author.find_by_email(params[:email])
    if user && user.password == params[:password]
      user
    else
      nil
    end
  end

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
