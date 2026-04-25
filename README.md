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
- Web 上のフリー素材を直リンクで利用
  - picsum.photos: 風景写真の差し込み（seed指定で固定）
  - placehold.co: 装飾バナー（派手色＋テキスト）
- 後で差し替え可能な前提で alt 属性を付与
