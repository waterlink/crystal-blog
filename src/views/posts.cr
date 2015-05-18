require "../view"
require "./post"

module Blog
  class PostsView < View
    template "posts.ecr"

    private getter posts

    def initialize(@posts)
    end

    def self.[](posts)
      new(posts)
    end

    def post_view(post)
      post.build_view(PostView).to_s
    end
  end
end
