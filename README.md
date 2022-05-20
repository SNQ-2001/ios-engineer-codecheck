# 株式会社ゆめみ iOS エンジニアコードチェック課題

## 概要

本プロジェクトは株式会社ゆめみのコードチェック課題です。

## アプリ仕様

本アプリは GitHub のリポジトリーを検索するアプリです。
|サンプル1|サンプル2|
|-|-|
|![swift](https://user-images.githubusercontent.com/84154073/169501589-5e625390-18c4-4479-8331-ffbf4bf9fafa.gif)|![visualstudio](https://user-images.githubusercontent.com/84154073/169501617-0a59a979-cc69-4eee-b63b-365f328b5d99.gif)|

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
- MarqueeLabel
---
### **[Alamofire](https://github.com/Alamofire/Alamofire)**

**インストール方法(CocoaPods)**
```
pod 'Alamofire'
```

**使用箇所**

(Alamofireを使用してコードを簡略化しました。)

通信処理全て

---
### **[AlamofireImage](https://github.com/Alamofire/AlamofireImage)**

**インストール方法(CocoaPods)**

```
pod 'AlamofireImage', '~> 4.1'
```

**使用箇所**

(AlamofireImageを使用してコードを簡略化しました。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169513820-c40adbd2-f166-49d5-8048-d5ac4432247d.jpg">

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169513831-2dd2d215-b74c-483c-9521-49490951720d.jpg">

---
### **[LicensePlist](https://github.com/mono0926/LicensePlist)**

**インストール方法(CocoaPods)**
```
pod 'LicensePlist'
```

**使用箇所**

(ライブラリのライセンスをアプリの設定に表示しています。)

|手順1|手順2|
|-|-|
|![IMG_0320](https://user-images.githubusercontent.com/84154073/169511058-444929c8-1acb-4a14-97b9-fad4ab9ff522.jpg)|![IMG_0319](https://user-images.githubusercontent.com/84154073/169511064-f7d50004-5feb-4ef6-8b16-a77d325c0e4c.jpg)|

---
### **[PKHUD](https://github.com/pkluz/PKHUD)**

**インストール方法(CocoaPods)**
```
pod 'PKHUD', '~> 5.0'
```

**使用箇所**

(検索を実行した後、ユーザーがフリーズしたと勘違いしないようにローディング画面を追加しました。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169511118-15976f95-339d-49c9-af81-aca5b9387807.gif">

---
### **[Charts](https://github.com/danielgindi/Charts)**

インストール方法(CocoaPods)
```
pod 'Charts'
```

**使用箇所**

(リポジトリの使用言語のグラフが表示されます。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169510269-f2fa6d36-c802-4144-933e-c6fd62b4e5c4.gif">

---
### **[MarqueeLabel](https://github.com/cbpowell/MarqueeLabel)**

**インストール方法(CocoaPods)**
```
pod 'MarqueeLabel'
```

**使用箇所**

(Viewの幅よりbioが長い場合、流れる文字になります。)

<img width="40%" src="https://user-images.githubusercontent.com/84154073/169508516-ddeadaa5-f76a-4046-a334-fd42e3e80351.gif">


---


## 課題をやるにあたっての問題点

https://api.github.com/search/repositories?q=Swift

こちらのAPIのWatcher数が正常に取得できていないと思われます。(2022/05/20)

必ずスター数と同じ結果が返却されます。


間違った数値を表示する事によってUXが損なわれると考えた為、

動作に「Watcher数」が含まれていましたが除外しました。

## 課題に対する自己評価

## アピールポイント

## 改善点
