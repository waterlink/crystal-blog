require "frank"

require "./*"

module Blog
  Post.create({ "title" => "How to write a post", "content" => "First you need to create a blog" })
  Post.create({ "title" => "How to create a blog", "content" => "TODO: WIP" })
  Post.create({ "title" => "Hello, World!", "content" => "This is a first post!" })
end
