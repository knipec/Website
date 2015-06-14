module Jekyll

  class MetaGallery < Liquid::Block
    def render(context)
      links = @nodelist[0].lines.map(&:strip).reject(&:empty?)
                          .each_with_index.map{|line, index|
        thumbnail, caption = line.split("=").map(&:strip)
        path = thumbnail.split("/")[0..-2].join("/")


        "<a href=#{path} class='gallery-image' >" \
        "  <img src='#{thumbnail}'>" \
        "  <div class='caption'>#{caption}</div>" \
        "</a>"
      }.join("\n")

      return "<div class='gallery large-gallery'>#{links}</div>"
    end
  end

end

Liquid::Template.register_tag('metagallery', Jekyll::MetaGallery)
