# rails-tutorial

## rubyとrailsの環境構築参考
[Ruby初学者のRuby On Rails 環境構築【Mac】 ](https://qiita.com/TAByasu/items/49c7cfbeeafad39eda07)

## なぜかうごかない
- rails6で``rails server``で実行しても起動しないでエラーが出る
  - Please run rails webpacker:install Error: No such file or directory
  - WebPacker入れないとダメらしい
  - 参考 [Rails6 Webpackerでエラーが出た](https://qiita.com/libertyu/items/1eb74adc817ab8971100)

- [3.1 セットアップ](https://railstutorial.jp/chapters/static_pages?version=5.1#sec-sample_app_setup) のリスト3.2に記載されているライブラリーのバージョンでやったがエラーが出る
  - actionviewの依存バージョンがrails-controller-testingとminitestで違うためconflictを起こしている様子
  - ails-controller-testingのバージョン指定を外して、gem側にバージョンを任せたらよしなに入れてくれた
