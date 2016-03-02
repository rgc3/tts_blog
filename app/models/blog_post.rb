class BlogPost < ActiveRecord::Base
	extend FriendlyId
		friendly_id :slug_candidates, use: :slugged

			def slug_candidates
				[
					:title,
					[:title, :user_id],
				]
			end

	belongs_to :user
	has_many :comments
end
