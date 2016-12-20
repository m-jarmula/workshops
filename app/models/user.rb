class User < ActiveRecord::Base
  attr_reader :current_user
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable
end
