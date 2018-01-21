class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  devise :trackable, :omniauthable

  def self.find_for_oauth(auth)
    user = User.find_by(uid: auth.uid, provider: auth.provider)

    user.presence || User.create(
      uid:      auth.uid,
      provider: auth.provider,
      name:     auth.info.nickname,
      avatar:   auth.info.image,
      password: Devise.friendly_token[0, 20]
    )
  end
end
