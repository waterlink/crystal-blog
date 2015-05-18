require "./controller"
require "./commands/show_latest_posts"

module Blog
  class HomeController < Controller
    def index
      render ShowLatestPostsCommand.new.call
    end
  end
end
