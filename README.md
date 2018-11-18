# Язык

* [English](../README.md)
* **[Русский]()**

# Инструкция по установке окружения

1. Склонировать содержимое этого репозитория.
2. Создать файл `.env` и указать в нём необходимые настройки при необходимости:

```bash
cp .env.example .env
```

3. Запуск скрипта инсталляции окружения:

```bash
make install
```

4. Запуск docker контейнеров:

```bash
make up
```

## Команды для работы с окружением

Запуск docker контейнеров:

```bash
make up
```

Остановка docker контейнеров:

```bash
make down
```

Перестроение docker контейнеров:

```bash
 make build
 ```

Доступ к bash консоли контейнера workspace:

```bash
 make workspace-bash
 ```

или короткая версия команды workspace-bash:

```bash
make wb
```

Доступ к bash консоли контейнера mysql:

```bash
make mysql-bash
```

или короткая версия команды mysql-bash:

```bash
make mb
```

Установка окружения:

```bash
make install
```