docker run --rm -it \
  -p 4000:4000 \
  -v "$PWD":/site \
  --user "$(id -u)":"$(id -g)" \
  -e GEM_HOME=/tmp/gems \
  -e GEM_PATH=/tmp/gems \
  -e BUNDLE_PATH=/tmp/bundle \
  -e BUNDLE_APP_CONFIG=/tmp/bundle-config \
  --entrypoint bash \
  ruby:3.1-bookworm \
  -lc 'set -e
    mkdir -p "$GEM_HOME" "$BUNDLE_PATH" "$BUNDLE_APP_CONFIG"
    gem install bundler
    cd /site
    bundle install
    bundle exec jekyll serve --host 0.0.0.0 --port 4000 --trace
  '
