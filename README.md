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

2.  Start Jekyll's test server:
    ```sh
    jekyll serve
    ```

3.  Visit [http://localhost:4000](http://localhost:4000)
