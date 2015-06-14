require 'fastimage'

module Jekyll

  class Gallery < Liquid::Block
    def render(context)
      page = File.dirname(context.environments.first["page"]["path"]) + "/"
      images = @nodelist[0].lines
                           .map(&:strip)
                           .reject(&:empty?)
                           .each_with_index.map{|line, index|
        image, caption = line.split("=").map(&:strip)
        image_path = "#{page}#{image}"
        width, height = FastImage.size(image_path)

        "<a class='gallery-image'>" \
        "  <img" \
        "   src='#{thumbname(image)}'" \
        "   data-src='#{image}'" \
        "   data-index='#{index}'" \
        "   data-width=#{width}" \
        "   data-height=#{height}" \
        "   data-caption='#{caption}'" \
        "  >" \
        "</a>"
      }.join("\n")

      return "<div class='gallery'>#{images}</div>"
    end
  end

end

Liquid::Template.register_tag('gallery', Jekyll::Gallery)
