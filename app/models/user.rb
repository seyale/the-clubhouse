class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # after_create :send_welcome_email

  has_many :users_games
  has_many :games, through: :users_games

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  private

  # def send_welcome_email
  #   UserMailer.welcome(self).deliver_now #   UserMailer.welcome(self).deliver_now
  # end
end
