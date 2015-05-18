require "../view"

module Blog
  class PostView < View
    template "post.ecr"

    private getter id
    private getter title
    private getter content

    def initialize(@id = 0, @title = "", @content = "")
    end

    def self.[](post)
      new(post)
    end

    def url
      "/posts/#{id}"
    end
  end
end
