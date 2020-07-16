# app/exhibits/picture_post_exhibit.rb
require_relative 'exhibit'
class PicturePostExhibit < Exhibit
    def render_body
        @context.render(partial: "/posts/picture_body", locals: {post: self})
    end

    def to_model
        __getobj__
    end

    def class
        __getobj__.class
    end
end
