require 'date'
require 'active_model'

class Post
	attr_accessor :blog, :title, :body, :pubdate

	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations
	validates :title, presence: true

	def initialize(attrs={})
		attrs.each do |k,v| send("#{k}=",v) end
	end

	def publish(clock=DateTime)
		return false unless valid?
		self.pubdate = clock.now
		@blog.add_entry(self)
	end

	def persisted?
        false
	end

end
