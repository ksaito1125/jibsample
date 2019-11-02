# Spring boot applicationサンプル

サンプルアプリケーションです。

## 起動手順

起動手順は、JARファイルとコンテナの２種類あります。

### JARファイル

下記のコマンドでビルドし狄道します。

```
make run
```

### コンテナ

下記のコマンドで、[Jib](https://github.com/GoogleContainerTools/jib)を使ってDockerイメージをビルドして起動します。

```
make up
```

## 動作確認

下記の通りアクセスできます。

```
$ curl localhost:8080
Greetings from Spring Boot!
$
```

## 参考

[Building an Application with Spring Boot](https://spring.io/guides/gs/spring-boot/)
[Jib](https://github.com/GoogleContainerTools/jib)

以上
