# Generates a thumbnail for every image in non-underscore directories.
# Based on https://github.com/mattvh/JekyllGalleryTag.

require 'fileutils'
require 'rake'

def thumbname(file)
  ext = File.extname(file)
  base = /(.*)#{ext}/.match(file)[1]
  "#{base}-thumb#{ext}"
end

module Jekyll

  class GeneratedFile < StaticFile
    def write(dest)
      true
    end
  end

  class ThumbnailGenerator < Generator
    def generate(site)
      config = site.config['thumbnails'] || {}
      width = config['width'] || 256
      height = config['height'] || 256

      FileList['**/*.{png,PNG,jpg,JPG,jpeg,JPEG,gif,GIF}'].exclude(/^_/).each do |file|
        thumbfile = thumbname(file)

        # Prevent Jekyll from deleting the thumbnail.
        site.static_files << GeneratedFile.new(site, site.source, File.dirname(thumbfile), File.basename(thumbfile))

        # Regenerate thumbnail if necessary.
        dest = "#{site.dest}/#{thumbfile}"
        if !File.exists?(dest) || File.mtime(dest) < File.mtime(file)
          # Generate the thumbnail.
          puts "Regenerating #{thumbfile}..."
          FileUtils.mkdir_p(File.dirname(dest))
          `convert "#{file}" -thumbnail 256x256^ -gravity center -extent 256x256 -strip "#{dest}"`
        end
      end
    end
  end

end
