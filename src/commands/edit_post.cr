require "../post"
require "../views/edit_post"

module Blog
  class EditPostCommand
    private getter id

    def initialize(@id)
    end

    def call
      Post.read(id).build_view(EditPostView)
    end
  end
end
