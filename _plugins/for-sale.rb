module Jekyll

    class ForSale < Liquid::Block
        def render(context)
            # TODO:
            # - Metagallery sized images
            # - Click on image, see larger photo, like Gallery
            # - See description (size, title, medium) and price next to image?

            # From Metagallery
#            links = @nodelist[0].lines.map(&:strip).reject(&:empty?)
#                              .each_with_index.map{|line, index|
#            thumbnail_and_path, caption = line.split("=").map(&:strip)
#            thumbnail, path = thumbnail_and_path.split("->").map(&:strip)
#
#            "<a href=#{path} class='gallery-image' >" \
#            "  <img src='#{thumbnail}'>" \
#            "  <div class='caption'>#{caption}</div>" \
#            "</a>"
#            }.join("\n")

          return "<div class='gallery large-gallery'>#{links}</div>"
        end
      end

    end

Liquid::Template.register_tag('for-sale', Jekyll::ForSale)
