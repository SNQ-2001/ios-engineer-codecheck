# 株式会社ゆめみ iOS エンジニアコードチェック課題

## 概要

本プロジェクトは株式会社ゆめみのコードチェック課題です。

## アプリ仕様

本アプリは GitHub のリポジトリーを検索するアプリです。
|サンプル1|サンプル2|
|:-:|:-:|
|![swift](README_Images/swift.gif)|![visualstudio](README_Images/visualstudio.gif)|

## 環境

- IDE：Xcode 13.3.1
- Swift：Swift 5.5
- 開発ターゲット：15.0

## 使用ライブラリ
- Alamofire
- AlamofireImage
- LicensePlist
- PKHUD
- Charts
- lottie-ios
- JXMarqueeView

---

### **[Alamofire](https://github.com/Alamofire/Alamofire)**

**インストール方法(CocoaPods)**
```ruby
pod 'Alamofire'
```

**使用箇所**

(Alamofireを使用してコードを簡略化しました。)

通信処理全て

---
### **[AlamofireImage](https://github.com/Alamofire/AlamofireImage)**

**インストール方法(CocoaPods)**

```ruby
pod 'AlamofireImage', '~> 4.1'
```

**使用箇所**

(AlamofireImageを使用してコードを簡略化しました。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169513820-c40adbd2-f166-49d5-8048-d5ac4432247d.jpg">

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169513831-2dd2d215-b74c-483c-9521-49490951720d.jpg">

---
### **[LicensePlist](https://github.com/mono0926/LicensePlist)**

**インストール方法(CocoaPods)**
```ruby
pod 'LicensePlist'
```

**使用箇所**

(ライブラリのライセンスをアプリの設定に表示しています。)

|手順1|手順2|
|:-:|:-:|
|![IMG_0320](https://user-images.githubusercontent.com/84154073/169511058-444929c8-1acb-4a14-97b9-fad4ab9ff522.jpg)|![IMG_0319](https://user-images.githubusercontent.com/84154073/169511064-f7d50004-5feb-4ef6-8b16-a77d325c0e4c.jpg)|

---
### **[PKHUD](https://github.com/pkluz/PKHUD)**

**インストール方法(CocoaPods)**
```ruby
pod 'PKHUD', '~> 5.0'
```

**使用箇所**

(検索を実行した後、ユーザーがフリーズしたと勘違いしないようにローディング画面を追加しました。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169511118-15976f95-339d-49c9-af81-aca5b9387807.gif">

---
### **[Charts](https://github.com/danielgindi/Charts)**

インストール方法(CocoaPods)
```ruby
pod 'Charts'
```

**使用箇所**

(リポジトリの使用言語のグラフが表示されます。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169510269-f2fa6d36-c802-4144-933e-c6fd62b4e5c4.gif">

---
### **[lottie-ios](https://github.com/airbnb/lottie-ios)**

**インストール方法(CocoaPods)**
```ruby
pod 'lottie-ios'
```

**使用箇所**

(リポジトリ格納庫が空の場合、アニメーションを表示します。)

<img width="50%" src="https://user-images.githubusercontent.com/84154073/169574766-37a287a2-be57-4bb6-8579-71c92374262c.gif">

---
### **[JXMarqueeView](https://github.com/pujiaxin33/JXMarqueeView)**

**インストール方法(CocoaPods)**
```ruby
pod 'JXMarqueeView'
```

**使用箇所**

(Viewの幅よりbioが長い場合、流れる文字になります。)

<img width="60%" src="https://user-images.githubusercontent.com/84154073/169508516-ddeadaa5-f76a-4046-a334-fd42e3e80351.gif">

---
## 課題をやるにあたっての問題点

https://api.github.com/search/repositories?q=Swift

こちらのAPIのWatcher数が正常に取得できていないと思われます。(2022/05/20)

必ずスター数と同じ結果が返却されます。


間違った数値を表示する事によってUXが損なわれると考えた為、

動作に「Watcher数」が含まれていましたが除外しました。

---

## 課題に対する自己評価

||難易度|課題|評価|
|:-:|:-:|:-:|:-:|
|<td bgcolor="#362B2E"><font color="#EC9D9E">初級|ソースコードの可読性の向上|5/5|
|<td bgcolor="#362B2E"><font color="#EC9D9E">初級|ソースコードの安全性の向上|5/5|
|<td bgcolor="#362B2E"><font color="#EC9D9E">初級|バグを修正|5/5|
|<td bgcolor="#362B2E"><font color="#EC9D9E">初級|Fat VC の回避|4/5|
|<td bgcolor="#3A382F"><font color="#D8B967">中級|プログラム構造をリファクタリング|2/5|
|<td bgcolor="#3A382F"><font color="#D8B967">中級|アーキテクチャを適用|3/5|
|<td bgcolor="#3A382F"><font color="#D8B967">中級|テストを追加|2/5|
|<td bgcolor="#293625"><font color="#ACDE5E">ボーナス|UI をブラッシュアップ|5/5|
|<td bgcolor="#293625"><font color="#ACDE5E">ボーナス|新機能を追加|5/5|

---

## アピールポイント(機能紹介)

### UXの向上系

**インターネット接続の確認**
|オンライン|オフライン|
|:-:|:-:|
|![online](README_Images/online.gif)|![offline](README_Images/offline.gif)|

**入力の有無**
|有|無|
|:-:|:-:|
|![online](README_Images/online.gif)|![not-entered](README_Images/not-entered.gif)|

**検索結果の有無**
|有|無|
|:-:|:-:|
|![online](README_Images/online.gif)|![not-found](README_Images/not-found.gif)|

**通信失敗(レートリミットの場合)**
|成功|失敗|
|:-:|:-:|
|![online](README_Images/online.gif)|![rate-limit](README_Images/rate-limit.gif)|

**自動更新**

一番下までスクロールすると自動で更新されます。

<img width="40%" src="README_Images/auto-reload.gif">

**ワンタップアクセス**
|アカウントにアクセス|リポジトリにアクセス|
|:-:|:-:|
|![show-account](README_Images/show-account.gif)|![show-repositry](README_Images/show-repositry.gif)|

**多言語対応**
|英語|日本語|
|:-:|:-:|
|![not-entered](README_Images/not-entered.gif)|![japanese](README_Images/japanese.gif)|

**入力の中断**

<img width="40%" src="README_Images/cancel.gif">

**インジゲーター**

「読み込み中である」という事をユーザーに伝える

<img width="40%" src="README_Images/indicator.gif">

**空の場合のアニメーション表示**

「今は表示するものがないよ」という事をユーザーに伝える

<img width="40%" src="README_Images/animation.gif">

---

### UIのブラッシュアップ系

**言語ラベル**



<img width="40%" src="README_Images/languageLabel.png">

**流れる文字**

<img width="60%" src="https://user-images.githubusercontent.com/84154073/169508516-ddeadaa5-f76a-4046-a334-fd42e3e80351.gif">

**背景色に言語カラーのグラデーションを使用**

<img width="40%" src="README_Images/gradation.png">

**言語の使用割合をグラフで表示**

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169510269-f2fa6d36-c802-4144-933e-c6fd62b4e5c4.gif">

---

## 改善点

**テストについての知識不足**

いままでテストを書くことがなかったので書き方がわからなかった。

自分なりに調べて書いてみたが正しく書けているのかも分からない。

**アーキテクチャについての知識不足**

自分なりにMVVMで書いたつもりだが、なんちゃってMVVMになっている可能性がある

**リファクタリング不足の可能性**

正直、どこまで細かく分けるべきか分からなかった

分けると引数が多くなりそうな箇所は読みにくくなる可能性があると思ったので、
複数の関数に分けずにまとめているがこの判断が合っているのか分からない

