# Профильный README — план реализации

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** README.md для репо `DoonyFreeman/DoonyFreeman` по спеке
`docs/superpowers/specs/2026-09-15-github-profile-readme-design.md`, опубликованный на GitHub.

**Architecture:** Один `README.md` (Markdown + HTML-таблицы) + `assets/*.webp`.
Скриншоты снимаются через Chrome (claude-in-chrome) с живых сайтов и локально
поднятых приватных проектов. Проверка — скрипт `check.sh` (ссылки 200, нет
приватных имён).

**Tech Stack:** GitHub Markdown, shields.io, `gh`, `curl`, `cwebp`/`sips`.

---

### Task 1: Проверочный скрипт (тест сначала)

**Files:** Create `check.sh`

- [ ] Написать `check.sh`:
```bash
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
```
- [ ] `chmod +x check.sh && ./check.sh` → ожидается ошибка (README.md нет) — тест «падает».
- [ ] Commit: `git add check.sh && git commit -m "chore: проверка README (ссылки, утечки, картинки)"`

### Task 2: Скриншоты

**Files:** Create `assets/masterstroy.webp`, `assets/interview-prep.webp`,
`assets/creder.webp`, `assets/dollar-editor.webp`

- [ ] Chrome 1440×900: открыть https://masterstroy44.ru и https://176.123.168.87.sslip.io/, снять скриншот главной, сохранить PNG в scratchpad.
- [ ] Клонировать `DoonyFreeman/InProj` и `DoonyFreeman/Dollar_Editior` в scratchpad, поднять (`docker compose up` или `npm run dev`), снять экран приложения. Если не поднимается за ~15 мин — пропустить, в README оставить текст без `<img>`.
- [ ] Конвертация: `sips -Z 1200 in.png --out tmp.png && cwebp -q 82 tmp.png -o assets/<name>.webp` (если `cwebp` нет — `brew install webp`).
- [ ] Commit: `git add assets && git commit -m "feat: скриншоты проектов"`

### Task 3: README.md

**Files:** Create `README.md` — разделы 1–8 из спеки, ровно в её порядке и формулировках.

- [ ] Написать README.md (контент — спека §1–§8; бейджи `https://img.shields.io/badge/<Label>-<hex>?style=for-the-badge&logo=<slug>&logoColor=white`).
- [ ] `./check.sh` → `OK`.
- [ ] Commit: `git add README.md && git commit -m "feat: профильный README"`

### Task 4: Публикация и визуальная проверка

- [ ] `gh repo create DoonyFreeman/DoonyFreeman --public --source . --push`
- [ ] Открыть https://github.com/DoonyFreeman в Chrome: десктоп 1440 и 400px — таблицы не ломаются, картинки грузятся, бейджи видны. Баги — править, повторить.
- [ ] Финальный отчёт: ссылка на профиль, что сделано, что не сделано (например, скриншоты приватных, если не поднялись).
