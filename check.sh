#!/usr/bin/env bash
# ponytail: единственная проверка README — ссылки живы, приватные репо не засвечены
set -u; fail=0
for u in $(grep -oE 'https?://[^ )">]+' README.md | grep -vE 'img.shields.io|t.me|mailto' | sort -u); do
  code=$(curl -s -o /dev/null -L --max-time 15 -w '%{http_code}' "$u")
  [ "$code" = 200 ] || { echo "BAD $code $u"; fail=1; }
done
for w in erp-masterstroy masterstroy-bitrix InProj Dollar_Editior EcoArch/ redlyaguha; do
  grep -q "$w" README.md && { echo "LEAK $w"; fail=1; }
done
for img in $(grep -oE 'assets/[a-z0-9-]+\.webp' README.md | sort -u); do
  [ -f "$img" ] || { echo "MISSING $img"; fail=1; }
done
[ $fail = 0 ] && echo OK; exit $fail
