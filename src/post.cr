require "active_record"
require "active_record/null_adapter"

module Blog
  class Post < ActiveRecord::Model
    include ActiveRecord::CriteriaHelper
    extend ActiveRecord::CriteriaHelper

    adapter null
    table_name posts

    primary id      :: Int
    field   title   :: String
    field   content :: String

    field_level :protected
    query_level :private

    def self.latest
      where(criteria("id") > 0)
    end

    def build_view(view_factory)
      view_factory.new(id: id, title: title, content: content)
    end
  end
end
