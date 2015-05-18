require "frank"

require "./*"

module Blog
  Post.create({ "title" => "How to write a post", "content" => "First you need to create a blog" })
  Post.create({ "title" => "How to create a blog", "content" => "TODO: WIP" })
  Post.create({ "title" => "Hello, World!", "content" => "This is a first post!" })

  class IdBiggerThan < ActiveRecord::NullAdapter::Query
    def call(params, fields)
      return false unless fields.has_key?("id") && params.has_key?("1")
      actual = fields["id"] as Int
      expected = params["1"] as Int
      actual > expected
    end
  end

  ActiveRecord::NullAdapter.register_query("id > :1", IdBiggerThan.new)
end
