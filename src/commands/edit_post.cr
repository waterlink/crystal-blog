require "../post"
require "../views/edit_post"

module Blog
  class EditPostCommand
    private getter id

    def initialize(@id)
    end

    def call
      (Post.read(id) as Post).build_view(EditPostView)
    end
  end
end
