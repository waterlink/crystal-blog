module Blog
  class View
    require "ecr/macros"

    TEMPLATE_DIR = "#{__DIR__}/templates"

    macro template(name)
      ecr_file "{{TEMPLATE_DIR.id}}/{{name.id}}"
    end
  end
end
