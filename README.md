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

3.  Start Jekyll's test server:
    ```sh
    jekyll serve
    ```

4.  Visit [http://localhost:4000](http://localhost:4000)

## Publishing

Make all changes in the `source` branch. When you are ready to publish to the live site:

1.  Run
    ```sh
    git add --all .; and git status
    ```
    to stage your changes and check what you're about to commit.

2.  If that looks good, run
    ```sh
    git commit -m "..."
    ```
    to commit your changes.

3.  Run the `push` script in the main directory to upload to Github and push to the live site.
