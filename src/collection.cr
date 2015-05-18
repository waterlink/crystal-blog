module Blog
  class Collection
    private getter items

    def initialize(@items)
    end

    def self.[](items)
      new(items)
    end

    def each
      items.each do |item|
        yield(item)
      end
    end
  end
end
