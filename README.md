# 目的
HTML + CSSのみで構成された静的サイトを構築する。
GitHub Pagesで公開し、Visual Studio CodeのLive Serverでローカル確認可能にする。

# 制約
- ビルドツール（Vite, Astroなど）は使用しない
- JavaScriptは必要最小限のみ
- Node.js不要
- 完全な静的構成とする

# ディレクトリ構成
- ルートに index.html を配置
- 静的ファイルは assets/ 配下に集約する
  - css, images, js に分割

# パス設計
- 相対パスで記述する
- GitHub Pagesで動作するようにする
- Live Serverでそのまま動作すること

# 要件
- 各ページは単体で表示可能にする
- 共通CSSを使用する
- semantic HTMLを使用する

# 開発体験
- VSCode + Live Serverで保存時に自動リロードされる前提
- index.html からリンク遷移できること


# ページ内容
- index.html: テントサウナ案内のトップページ
  - 2026/5/5（こどもの日）開催イベントの告知
  - 概要・日時・場所・持ち物・申込み導線を1枚にまとめる
  - 平成感のあるダサめデザイン（マーキー／レインボー／点滅／ヒットカウンター等）
- access.html: アクセス情報ページ
  - 会場までの最寄駅・車での案内
  - index.html と相互リンク

# 画像
- 自動取得: `scripts/fetch-images.sh` が loremflickr (Flickr CC画像) からキーワードで自動DLし `assets/images/` に保存する
  - 実行: `bash scripts/fetch-images.sh`（依存は curl のみ・Node.js不要）
  - キーワード/サイズ/seedはスクリプト内で定義。差し替えはスクリプト編集→再実行
  - `?lock=N` で同じキーワード+seedの結果を固定
- 自作SVG: `assets/images/*.svg` (tent-sauna / totonou / park) はセクションごとのカット用
- 装飾用の retro 88x31 バナー (フッター) は placehold.co の直リンクをそのまま使用（意図的な平成感の演出）
- 後で差し替え可能な前提で alt 属性を付与
