# boilerPlate-node-coffee-ava

これはnodejsのmoduleを作るためのボイラープレートです。  
coffee-scriptのコンパイル、avaによる自動テストが実行されます。
[mick\-whats/boilerPlate\-coffee\-nodeModule](https://github.com/mick-whats/boilerPlate-coffee-nodeModule)の後継バージョンです。

## download

git-hubからダウンロード、もしくはcloneしてください。

以下はcloneのサンプルです。１行です。myProjectの部分は新しいプロジェクト名です。
```
git clone https://github.com/mick-whats/boilerPlate-node-coffee-ava.git myProject
```
## init

以下を変更して使ってください。

```package.json
{
  "name": "プロジェクト名",
  "version": "0.1.0",
  "license": "ライセンス",
  "author": "作者名"
}

```

dependencies、devDependenciesは適当に。

gitリポジトリの削除、初期化、npmインストールを行います。

```
rm -rf .git
git init
yarn install
```

## 使い方

### `npm run watch`

coffeeディレクトリ以下のファイルを保存する度に自動でコンパイル、テストが走ります。

### `npm run cover`

カバレッジを測ります。

### `npm run report`

カバレッジのhtmlレポートを作ります。`coverage/index.html`から見られます。

### `npm run update:snap`

avaのsnapshotをアップデートします。
