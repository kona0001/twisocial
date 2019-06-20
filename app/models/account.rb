class Account < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    uid = auth[:uid]
    icon_url = auth[:info][:image]
    token = auth[:credentials][:token]
    secret = auth[:credentials][:secret]

    self.find_or_create_by(uid: uid) do |user|
        user.icon_url = icon_url
        user.token = token
        user.secret = secret
      end
    end
end
