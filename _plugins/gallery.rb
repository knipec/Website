require 'fastimage'

module Jekyll

  class Gallery < Liquid::Block
    def render(context)
      @nodelist[0].lines.map(&:strip).reject(&:empty?).each_with_index.map{|line, index|
        image, caption = line.split("=").map(&:strip)
        image_path = File.dirname(context.environments.first["page"]["path"]) + "/" + image
        width, height = FastImage.size(image_path)

        "<img" \
        " src='#{thumbname(image)}'" \
        " data-src='#{image}'" \
        " data-index='#{index}'" \
        " data-width=#{width}" \
        " data-height=#{height}" \
        " data-caption='#{caption}'" \
        ">"
      }.join("\n")
    end
  end

end

Liquid::Template.register_tag('gallery', Jekyll::Gallery)
