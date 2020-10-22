# Carissa's Super Awesome Website

## Setup

### Install Dependencies

1.  Install [Homebrew](http://brew.sh/).

2.  Install [ImageMagick](http://www.imagemagick.org/), [pkg-config](http://www.freedesktop.org/wiki/Software/pkg-config/), and the latest [Ruby](https://www.ruby-lang.org/) version:
    ```sh
    brew install imagemagick pkg-config ruby
    ```

3.  Install [FastImage](https://github.com/sdsykes/fastimage) and [Jekyll](http://jekyllrb.com/):
    ```sh
    sudo gem install fastimage jekyll
    ```

### Start Jekyll

1.  Clone the repository and `cd` into it:
    ```sh
    cd ~/Developer  # ...or wherever you want to clone it to
    git clone git@github.com:Calder/Carissa-Website.git Website
    cd Website
    ```

2.  You will do all your development in the `source` branch. Switch to it with:
    ```sh
    git checkout source
    ```

### Making Changes

1.  Start Jekyll's test server:
    ```sh
    jekyll serve
    ```
2. Never make changes to _site; it is generated. To change thumbnails, create the 256px by 256px thumbnail image file alongside the original full-sized file and append "-thumb" to its name.

3.  Visit [http://localhost:4000](http://localhost:4000)

## Publishing

Make all changes in the `source` branch. When you are ready to publish to the live site:

1.  Stage your changes and check what you're about to commit:
    ```sh
    git add --all .
    git status
    ```

2.  If that looks good, commit your changes:
    ```sh
    git commit -m "..."
    ```

3.  And finally push changes to Github and the live site:
    ```sh
    ./push
    ```

## Notes
- Certain special characters are problems, like apostrophes in gallery image descriptions

## References

* [Github Pages](https://pages.github.com/)