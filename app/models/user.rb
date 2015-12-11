class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :confirmable
  include DeviseTokenAuth::Concerns::User


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image
      #user.location = auth.extra.raw_info.location.name
      #user.birthday = auth.extra.raw_info.birthday
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      #user.fb_cover = auth.extra.raw_info.cover.source
      #user.about_me = auth.extra.raw_info.bio
      #user.friends_list = auth.extra.raw_info.friends.data
      user.save!
    end
  end
end

