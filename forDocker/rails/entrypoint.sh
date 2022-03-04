#!/bin/bash
# bashの設定を確認変更コマンド(-e:パイプやサブジェルで実行したコマンドがエラーになったらシェルを修了)
set -e

# Remove a potentially pre-existing server.pid for Rails.
# サーバーはDockerで作成しているため、Railsのserverがあるとエラーが起こる。
rm -f /app/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
# シェルスクリプトの変数を全て展開させる
exec "$@"
