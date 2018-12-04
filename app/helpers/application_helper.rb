module ApplicationHelper
	def profile_pic(user)
		if user.autopic != nil
			user.autopic
		elsif user.avatar.url != nil 
			user.avatar.url
		else
			'default.png'
		end
	end

	def random_tweet
		if User.where(bot: true).count > 0
			tweeter = User.find(User.where(bot:true).pluck(:id).sample)
			Tweet.create!(message: Faker::TwinPeaks.quote, user_id: tweeter.id)
		end
	end
end
