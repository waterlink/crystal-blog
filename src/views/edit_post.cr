require "../view"

module Blog
  class EditPostView < View
    template "edit_post.ecr"

    private getter id
    private getter title
    private getter content

    def initialize(@id = 0, @title = "", @content = "")
    end

    def stage
      return "Creating" if new?
      "Editing"
    end

    def url
      return "/posts" if new?
      "/posts/#{id}"
    end

    private def new?
      id.is_a?(Int::Null)
    end
  end
end
