module Jekyll

  class Gallery < Liquid::Block
    def render(context)
      @nodelist[0].lines.map(&:strip).reject(&:empty?).map{|line|
        image, decsription = line.split("=").map(&:strip)
        "<img src='#{thumbname(image)}' alt='#{decsription}'>"
      }.join("\n")
    end
  end

end

Liquid::Template.register_tag('gallery', Jekyll::Gallery)
