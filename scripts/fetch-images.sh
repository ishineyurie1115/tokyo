#!/usr/bin/env bash
# キーワードに合う画像を loremflickr から自動DLして assets/images/ に保存する。
# 使い方: bash scripts/fetch-images.sh
# 依存: curl のみ（Node.js 不要）
#
# loremflickr.com は Flickr の CC 画像をキーワードでランダム選択して返す。
# ?lock=N を付けるとキーワード+seed で結果が固定される（毎回同じ画像）。

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/assets/images"
mkdir -p "${OUT_DIR}"

fetch() {
  local name="$1" w="$2" h="$3" tags="$4" seed="$5"
  local url="https://loremflickr.com/${w}/${h}/${tags}?lock=${seed}"
  printf "→ %-24s  [%s]\n" "${name}" "${tags}"
  if ! curl -fsSL --retry 3 --retry-delay 2 -o "${OUT_DIR}/${name}" "${url}"; then
    printf "  !! 取得失敗: %s\n" "${name}" >&2
    return 1
  fi
}

# === ヒーロー画像（index.html の placehold.co を置換する想定） ===
fetch "hero.jpg"          780 180  "sauna,tent,forest"      11

# === 拡張枠（必要になったらコメントを外す） ===
# fetch "sauna-photo.jpg"   600 400  "sauna,steam,wood"       21
# fetch "totonou-photo.jpg" 600 400  "relax,nature,water"     31
# fetch "park-photo.jpg"    600 400  "park,grass,japan"       41

echo "完了: ${OUT_DIR}/"
