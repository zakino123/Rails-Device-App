# DockerHubからruby:2.6のイメージを取得
FROM ruby:2.6
# Node.jsをインストール
RUN set -x && curl -sL https://deb.nodesource.com/setup_14.x | bash -

# yarnパッケージマネージャをインストール
RUN set -x && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

# APTライブラリでパッケージを管理(node.js、yarn、vim等を更新)
RUN set -x && apt-get update -qq && apt-get install -yq nodejs yarn vim default-mysql-client

RUN mkdir /app
# 作業ディレクトリ指定
WORKDIR /app
# ※ここのコメントはあとで外す
# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock
# RUN bundle install
COPY . /app

# Add a script to be executed every time the container starts.
COPY ./forDocker/rails/entrypoint.sh /usr/bin/
# 実行権限付与
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
# 3000ポートを公開するよう指定
EXPOSE 3000

# Start the main process.
# ※ここのコメントはあとで外す
# CMD ["rails", "server", "-b", "0.0.0.0"]
