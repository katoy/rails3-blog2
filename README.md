
[![Build Status](https://travis-ci.org/katoy/rails3-blog2.png?branch=master)](https://travis-ci.org/katoy/rails3-blog2)
[![Dependency Status](https://gemnasium.com/katoy/rails3-blog2.png)](https://gemnasium.com/katoy/rails3-blog2)
[![Coverage Status](https://coveralls.io/repos/katoy/rails3-blog2/badge.png)](https://coveralls.io/r/katoy/rails3-blog2)


[Getting Started with Rails](http://guides.rubyonrails.org/getting_started.html)  を行なってみた結果です。  
[Rails3.2 でWebアプリケーションを作成](http://merrill777.blog135.fc2.com/)  

追加事項
=======

* /posts では、 TAG の数、コメントの数も表示するようにしています。
この場合、単純に coding したのでは、N + 1 問題が発生します。(各 post 毎に tag, comment 検索の SQL が発行されてしまう。)  
counter_cache を使って対処しています。  
その結果、 /posts の表示は 1 つの SQL 発行だけで済んでいます。

* plugin の追加
better_error の導入、コードカバレッジの導入、 N + 1 問題のチェックの導入, rack_mini_profile の導入  
をしています。

* mini_profiler について
http://localhost:3000/?pp=help のように　?pp=help で mini_profile のオプション指定を調べることができます。  
また、 config/initializers/mini_profiler.rb で動作設定が可能です。  
キー操作 ALT P で表示 on/off できます。  


TODO:
=====
- test/fuxtures/* にテストデータを追加してありますが、test コード自体は まだ 編集をしていません。
- M + 1 問題は未対応です。

See
=====
- http://morizyun.github.io/blog/better-error-gem-rails-ruby-rack/  
　Railsのデバックが捗るエラー画面 Better Errors 使ってみた！

- http://www.techscore.com/blog/2012/12/25/rails%E3%83%A9%E3%82%A4%E3%83%96%E3%83%A9%E3%83%AA%E7%B4%B9%E4%BB%8B-n1%E5%95%8F%E9%A1%8C%E3%82%92%E6%A4%9C%E5%87%BA%E3%81%99%E3%82%8B%E3%80%8Cbullet%E3%80%8D/  
　Railsライブラリ紹介: N+1問題を検出する「bullet」

- http://www.techscore.com/blog/2012/12/25/rails%E3%83%A9%E3%82%A4%E3%83%96%E3%83%A9%E3%83%AA%E7%B4%B9%E4%BB%8B-%E3%83%86%E3%82%B9%E3%83%88%E3%81%AE%E3%82%AB%E3%83%90%E3%83%AC%E3%83%83%E3%82%B8%E3%82%92%E6%B1%82%E3%82%81%E3%82%8B%E3%80%8Csimp/  
　Railsライブラリ紹介: テストのカバレッジを求める「SimpleCov」

- http://morizyun.github.io/blog/pry-tips-rails-ruby/  
　Pryの秘めた力を最大限引き出す4つの拡張機能[Rails]

- http://www.ideaxidea.com/archives/2010/11/gitignore.html  
　.gitignoreの設定に迷ったらgithubへどうぞ

- http://railscasts.com/episodes/372-bullet?language=ja&view=asciicast
　Bullet を使ってRailsアプリケーションの最適化をおこないます。



