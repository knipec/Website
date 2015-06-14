require 'fastimage'

module Jekyll

  class MetaGallery < Liquid::Block
    def render(context)
      page = File.dirname(context.environments.first["page"]["path"]) + "/"
      links = @nodelist[0].lines
                           .map(&:strip)
                           .reject(&:empty?)
                           .each_with_index.map{|line, index|
        thumbnail, caption = line.split("=").map(&:strip)
        path = thumbnail.split("/")[0..-2].join("/")

        "<a href=#{path}>" \
        "  <img src='#{thumbnail}'>" \
        "  <div class='caption'>#{caption}</div>" \
        "</a>"
      }.join("\n")

      return "<div class='metagallery'>#{links}</div>"
    end
  end

end

Liquid::Template.register_tag('metagallery', Jekyll::MetaGallery)
