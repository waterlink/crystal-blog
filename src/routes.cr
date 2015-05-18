module Blog
  get "/" do |frank|
    HomeController[frank].index
  end

  get "/posts/new" do |frank|
    PostsController[frank].new
  end

  get "/posts/:id/edit" do |frank|
    PostsController[frank].edit
  end
end
