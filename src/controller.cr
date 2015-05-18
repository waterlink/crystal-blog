module Blog
  class Controller
    private getter frank

    def initialize(@frank)
    end

    def self.[](frank)
      new(frank)
    end

    def render(view)
      frank.response.content_type = "text/html"
      view.to_s
    end
  end
end
