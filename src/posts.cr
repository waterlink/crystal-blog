require "./controller"
require "./commands/new_post"
require "./commands/edit_post"

module Blog
  class PostsController < Controller
    def new
      render NewPostCommand.new.call
    end

    def edit
      render EditPostCommand.new(id).call
    end

    private def id
      frank.request.params.fetch("id").to_i
    end
  end
end
