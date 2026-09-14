# Профильный README github.com/DoonyFreeman — дизайн

Дата: 2026-09-15. Репо: `DoonyFreeman/DoonyFreeman` (README показывается на
странице профиля). Язык: только русский. Цель: заказчик за 10 секунд понимает,
что делаю, видит живые работы и как связаться.

## Принципы
- Только GitHub-Markdown + допустимый HTML (`<table>`, `<img>`, `<p align>`,
  `<a>`). Никаких скриптов, сборки, внешних CSS.
- Публичный репо → карточка со ссылкой. Приватный → текст (+ скриншот),
  без ссылки и без имени репо. ERP и AI Classroom Copilot — одной строкой.
- Скриншоты хранятся в `assets/` этого репо (WebP, ширина 1200px).
- Бейджи стека — shields.io `for-the-badge` с логотипом.
- Статистика GitHub (stats/streak) — не добавляем.

## Структура README (сверху вниз)

### 1. Шапка (типографика, без баннера)
- `# Артём Ребриков`
- Подзаголовок: *Backend & Fullstack-разработчик · FastAPI / Spring Boot ·
  Next.js · 1С-Битрикс · Москва*
- Оффер: «Делаю backend-сервисы и сайты под ключ: от API и базы до вёрстки
  из Figma и выкладки в прод».
- Три факта строкой: **2 проекта в проде · 40+ публичных репо · 3 языка
  backend (Python, Java, Go)**.
- Кнопки-бейджи: Telegram → `https://t.me/Doony_Freeman`,
  Email → `mailto:doony_freeman@vk.com`.

### 2. Чем могу быть полезен — HTML-таблица 3 колонки
| ⚙ Backend / API | 🖥 Fullstack-веб | 🏗 Сайты для бизнеса |
REST на FastAPI/Spring Boot, PostgreSQL, очереди, auth, тесты, CI/CD ·
Next.js/React + TS, дизайн-система, анимации, интеграция с API ·
1С-Битрикс, headless WordPress + Next.js, Figma → код, адаптивы, деплой.

### 3. Стек — бейджи по группам
- Backend: Python, FastAPI, SQLAlchemy, Pydantic, Alembic, Celery, Java,
  Spring Boot, Go, aiogram
- Frontend: TypeScript, React, Next.js, Tailwind, TanStack Query, Zustand,
  Framer Motion, GSAP, shadcn/ui, Vite
- Data & Infra: PostgreSQL, Redis, Kafka, Docker, GitHub Actions, Helm,
  Grafana, Prometheus, Nginx
- CMS: 1С-Битрикс, PHP, WordPress, Figma
- Качество: pytest, Playwright, Vitest, mypy, ruff, Prettier
- AI/ML: PyTorch, YOLO, OpenCV, LLM-интеграции

### 4. 🚀 В продакшене — таблица 2 колонки, скриншот + текст + бейджи
- Сайт застройщика (Кострома) — live https://masterstroy44.ru.
  «Figma → 1С-Битрикс, каталог квартир с планировками, ипотечные программы,
  формы заявок, 3 адаптива». Скриншот `assets/masterstroy.webp`.
- Interview Prep — live https://176.123.168.87.sslip.io/ (подпись
  «демо-стенд»). «ИИ проверяет ответ по базе знаний сайта, spaced repetition
  по концептам». FastAPI + Next.js. Скриншот `assets/interview-prep.webp`.
- Под таблицей одна строка: «Также: ERP для строительной компании —
  FastAPI + Next.js, канбан/Гант/файлы/чат, Docker + Helm, CI/CD (закрытый
  проект)».

### 5. 🧩 Open-source — таблица 2×3, без скриншотов
Booking API (`Booking_API_Service`), Online Shop API (`redis-kafka`),
Realtime Messenger (`WebSocket_Messenger`), Console Upscaler
(`Console_upscaler`), License Plate Recognition (`Car_detection_YOLO`),
Tech-Support Triager (`Smart_supporter`). Каждая: название-ссылка, одна
строка сути, 2–3 бейджа. Ниже строка: «Telegram-боты:
[таск-менеджер](Task_Manager_TG_Bot), [напоминания](celebrate_manager_bot),
[wishlist](Our_wants_bot)».

### 6. 🤝 В команде
- DocFind — ссылка https://github.com/Nek1s/DocFind. Поиск по PDF/DOCX,
  FastAPI + Docker + Grafana/Prometheus. Роль: backend, индексация, метрики
  (48 коммитов).
- EcoArch — без ссылки. Студия ландшафтного дизайна, FastAPI + React 19,
  442 теста / 92 % покрытие. Роль: backend и часть фронта (40 коммитов).

### 7. 🔒 Закрытые проекты — текст + скриншот, без ссылок
- Creder — менеджер секретов по проектам, шифрование в браузере (WebCrypto),
  сервер хранит только шифротекст. FastAPI + React. `assets/creder.webp`.
- Dollar Editor — веб-редактор вертикальных роликов 9:16: сценарий → озвучка
  → фоновый рендер FFmpeg. FastAPI + React. `assets/dollar-editor.webp`.
- AI Classroom Copilot — одна строка: Android (Kotlin/Compose) + FastAPI
  realtime.

### 8. Контакты
Повтор кнопок Telegram / Email. Строка: «Открыт к заказам и сотрудничеству».

## Скриншоты — откуда
masterstroy44.ru и Interview Prep — снять с живых сайтов (1440px viewport).
Creder, Dollar Editor — поднять локально из репо `InProj` / `Dollar_Editior`
и снять; если не поднимается за разумное время — отложить, оставить текст.

## Правило поддержки
Новый проект → публичный: карточка в §5 (или §4, если в проде); приватный:
строка в §7. Скриншот в `assets/`, коммит в `main` этого репо.

## Проверка
- README рендерится на github.com без сломанных таблиц и картинок.
- Все ссылки отвечают 200 (curl).
- Нет ни одного упоминания приватных репо по имени, нет ссылок на
  `erp-masterstroy` / `masterstroy-bitrix` / `InProj` / `Dollar_Editior`.
- Мобильный вид на github.com (узкая ширина) — таблицы не разваливаются.
