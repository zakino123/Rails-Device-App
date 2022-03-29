# RAILS-DEVISE-APP

・rails new and devise by Rails6.1+MySQL8.0 sample

## Rails README
・Ruby version(2.6.6)

・Database creation

    rails db:create

    rails db:migrate

・Deployment instructions

    docker-compose up -d

## Tailwindcssでスタイル適用
・ログイン画面

<img width="1423" alt="スクリーンショット 2022-03-11 17 19 42" src="https://user-images.githubusercontent.com/75520329/157832825-31e8b650-b013-41f0-9f0f-0a93cd2e4afd.png">

・アカウント登録画面

<img width="1427" alt="スクリーンショット 2022-03-11 18 19 56" src="https://user-images.githubusercontent.com/75520329/157839200-876f424a-65e3-4879-b0ea-2f5f6960a974.png">

・アカウント確認再送メール画面

<img width="1426" alt="スクリーンショット 2022-03-14 10 29 32" src="https://user-images.githubusercontent.com/75520329/158089878-d9fbd30e-b370-440f-95b4-7bc8193b3516.png">

## Reference sources
・docker-compose 下で rails new して Rails6.1+deviseを試す | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/83339b5d58f416

・Rails6.1+devise の controller と view をカスタマイズできる状態にする | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/2a3aaff6f6a291

・基礎MySQL その２ my.cnf (設定ファイル)
  https://qiita.com/yoheiW@github/items/bcbcd11e89bfc7d7f3ff

・RailsでDockerfile設定しながら、コマンド一つひとつ丁寧に読んでみた

  https://qiita.com/tanutanu/items/808850ed7e4e8461b24b

・Docker Compose - docker-compose.yml リファレンス

  https://qiita.com/zembutsu/items/9e9d80e05e36e882caaa

・Action Mailer の基礎

  https://railsguides.jp/action_mailer_basics.html

・heartcombo / devise | GitHub

  https://github.com/heartcombo/devise

・開発
 2017.05.09
[Devise How-To] sign_inとsign_outのデフォルトルーティングを変更する（翻訳）

  https://techracho.bpsinc.jp/hachi8833/2017_05_09/39184

・【Rails】deviseの使い方をマスターしてログイン認証機能を実装 | Pikawaka

  https://pikawaka.com/rails/devise

・Deviseの設定手順をまとめてみた。 その1　導入編 | Qiita

  https://qiita.com/hakatatech/items/ea0d9236d89fa24a7a1c

・deviseを日本語表記にする。 | Qiita

  https://qiita.com/ryuuuuuuuuuu/items/48dec280cf8925968c65

・CLI | Parcel

  https://ja.parceljs.org/cli.html

・gem devise の module 翻訳 | 北山淳也| zenn

  https://zenn.dev/junki555/articles/dc41580eb3daec

・Ruby on Railsを使って新規アプリを作成し、TOPページを表示させる | Qiita

  https://qiita.com/Ryunosuke38/items/d907354e16d08825b24f

・Deviseの設定手順をまとめてみた。 その2　ViewとControllerのカスタマイズ編 | Qiita

  https://qiita.com/hakatatech/items/f991d54ff527edb844d9

・Rails deviseの導入とView + Controllerのカスタマイズ(sign_in/out後のpath指定など) | Qiita

  https://qiita.com/mmmasuke/items/7d5c47b4a40f6912adf2

・Rails で Devise のコントローラーをカスタマイズ | EasyRamble

  https://easyramble.com/cutomize-controllers-on-rails-devise.html

・Devise で devise_for メソッドによるルーティングを確認 | EasyRamble

  https://easyramble.com/routing-by-devise-for.html

・devise ユーザーのプロフィール画面作成と編集（デフォルトをカスタマイズ） | Qiita

  https://qiita.com/akr03xxx/items/82ba45f7ef4fdbd5c702

・yarn だけで Rails6.1+Simpacker+PostCSS+TailwindCSS 環境を作る | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/911c7e2a849ccd

・JUNKI555/output_manifest_js.js | GitHub

  https://gist.github.com/JUNKI555/8f5a3616be630840b65dbb13769c51c3

・Simpacker 用の manifest.json を出力する Node.js スクリプト を作った | 北山淳也 | zenn

  https://zenn.dev/junki555/articles/d57fb6127a3061

・tailwindcss公式

  https://tailwindcss.jp/

・Tailwind CSS に流動的 Spacing を導入

  https://zenn.dev/ixkaito/articles/tailwindcss-fluid-spacing

### LINEログイン機能
・【画像付き】RailsでDeviseを利用してLINEログイン機能を実装

  https://qiita.com/s10aim_tana/items/2d174d4e31e4041700ee

・LINE Developers

  https://developers.line.biz/ja/

・deviseとOmniAuthをRailsアプリケーションに導入しテストする

  https://qiita.com/yuki_0920/items/003d8b1c73352378188d#:~:text=OmniAuth%E3%81%A8%E3%81%AF%E3%80%81%E5%A4%96%E9%83%A8%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9,%E3%82%92%E6%8F%90%E4%BE%9B%E3%81%99%E3%82%8B%E4%BB%95%E7%B5%84%E3%81%BF%E3%81%A7%E3%81%99%E3%80%82

・ngrokの切り替え時に注意すること

  https://qiita.com/hirokun0204/items/a18427c50c90676aed95

- [【Gem】Banken](https://sakitadaiki.hatenablog.com/entry/2021/04/09/054146)
