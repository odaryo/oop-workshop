## oop-workshop
オブジェクト指向勉強会用のリポジトリです。

### 前提条件
dockerがインストール済みで、docker-composeが動くようにしておいてください。
EC2の開発環境でも可

### セットアップ方法

1. リポジトリをクローン
2. テストが動くように設定
```shell
cd <projet_root>
cp .env.example .env
make install
make keygen
```
3. テストの実行  
```shell
make test
```
下記のような表示となればOKです
```shell
docker-compose exec php-fpm ./vendor/bin/phpunit
PHPUnit 9.5.13 by Sebastian Bergmann and contributors.

..                                                                  2 / 2 (100%)

Time: 00:00.086, Memory: 20.00 MB

OK (2 tests, 2 assertions)
```
