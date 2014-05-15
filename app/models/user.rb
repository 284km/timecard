class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = username(auth)
    end
  end

  private
    def self.username(auth)
      if auth.privider == "twitter"
        auth.info.nickname
      else
        auth.info.name
      end
    end
end
