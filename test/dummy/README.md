# Dummy App для локальной разработки гема

Позволяет смотреть header и footer без коммитов и деплоя.

## Запуск

```bash
cd test/dummy
bundle install
bin/rails db:prepare   # если нужна БД
bin/rails server -p 3001   # порт 3001, если 3000 занят
```

Откройте http://localhost:3001/donate — там отображаются partials из гема.

Гем подключён через `path: "../.."`, поэтому изменения в `app/views/` и `app/assets/` гема сразу видны после перезагрузки страницы.
