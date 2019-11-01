# Spring boot applicationサンプル

サンプルアプリケーションです。

## ビルド

Springアプリケーションは、JARファイルでパッケージされます。

### JARファイル

下記のコマンドでビルドします。

```
mvn package
```

作成されたjarファイルを実行します。

```
java -jar target/gs-spring-boot-0.1.0.jar
```

### コンテナ

[Jib](https://github.com/GoogleContainerTools/jib)を使ってDockerイメージにパッケージ化します。

```
mvn compile jib:dockerBuild
```

下記のコマンドで起動します。

```
docker run -d -p 8080:8080 jibsample
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

以上
