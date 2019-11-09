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

## リリース

下記のコマンドでリリースを行います。

```
git checkout -b release
mvn --batch-mode clean release:prepare release:perform
git checkout master
git merge release
git branch -d release
```

## pom.xmlの設定

pom.xmlの設定は、下記の通りです。

``<version>``に、メジャー.マイナー.パッチ-SNAPSHOTを設定します。
``パッチ-SNAPSHOT``は、release pluginが管理します。

```
<version>0.1.0-SNAPSHOT</version>
```

``<scm>``にGitリポジトリの情報を設定します。

```
  <scm>
    <connection>scm:git:git@github.com:ksaito1125/jibsample.git</connection>
    <tag>HEAD</tag>
    <!-- <url>http://127.0.0.1/websvn/my-project</url> -->
  </scm>
```

``<destributionManager>``を設定します。

必要に応じてrelease pluginsのgoalsを設定します。

## クリーンナップ

release pluginのクリーンナップは、下記のとおりです。

* ローカルのタグを削除
* ブランチの削除
* リモートのタグを削除
* リモートのブランチを削除

```
git tag -d タグ
git branch -d ブランチ
git push origin :タグ
git push origin :ブランチ
```

リモートタグの一覧は、下記のコマンドで確認できます。

```
git ls-remote --tags
```

到達可能なタグは、下記で調べられます。

```
git tag -l --merged
```

以上
