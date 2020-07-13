class Post
	attr_accessor :blog, :title, :body

	extend ActiveModel::Naming
	include ActiveModel::Conversion

	def initialize(attrs={})
		attrs.each do |k,v| send("#{k}=",v) end
	end

    def publish
        blog.add_entry(self)
	end

	def persisted?
        false
	end

end
