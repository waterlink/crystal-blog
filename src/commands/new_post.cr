require "../post"
require "../views/edit_post"

module Blog
  class NewPostCommand
    def call
      Post.new.build_view(EditPostView)
    end
  end
end
