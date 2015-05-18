require "../views/posts"

module Blog
  class ShowLatestPostsCommand
    def call
      posts = Post.latest
      collection = Collection[posts]
      PostsView[collection]
    end
  end
end
