class Story < ActiveRecord::Base
	belongs_to :user


	has_attached_file :image, styles: { large: "1280x720", medium: "600x600>", thumb: "150x150#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
  	validates :title, presence: true, length: {minimum: 3}, uniqueness: true
	validates :content, presence: true, length: {minimum: 10}
	validates :description, presence: true
	validates :tag, presence: true

	def self.search(search)
		if search
			where(["tag LIKE ?", "%#{search}%"])
		else
			all
		end
	end

  	def to_param
    	slug
  	end

end
