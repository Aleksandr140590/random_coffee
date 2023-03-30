# random_coffee_bot

## Описание

Бот для нетворкинга.
С помощью бота проходят живые и онлайн встречи 1-1 для студентов и IT-специалистов. Каждую неделю рандомно подбирается пара для общения. Встречи проходят за пределами бота - на онлайн звонках или лично.

Бот поддерживает функционал:

- со стороны юзера: регистрация, получение пары, информация о прошедших встречах и возможность оставить отзыв, возможность выставить "каникулы" на определенный срок и не участвовать в распределении без блокировки бота
- со стороны админа: отчётность об участниках и их статусах, ручной запуск алгоритма распределения, бан-лист юзеров (добавление/удаление), отправка сообщения всем активным пользователям через бота.

Бот реально работает по ссылке <https://t.me/YP_random_coffee_bot>

## Команда разработки

- Артём <https://github.com/a-menshikov>
- Александр <https://github.com/Aleksandr140590>
- Давид <https://github.com/Xseron>

## Технологии

- python==3.10
- aiogram==2.24
- SQLAlchemy==2.0.4

## Запуск проекта в dev-режиме

Проект предназначен для развертывания в ОС Linux

1. Клонировать репозиторий и перейти в него в командной строке:

    ```bash
        git clone <ссылка с git-hub>
    ```

2. Cоздать виртуальное окружение:

    ```bash
        python3 -m venv venv
    ```

3. Активируйте виртуальное окружение

    ```bash
        source venv/bin/activate
    ```

4. Установите зависимости из файла requirements.txt

    ```bash
        pip install -r requirements.txt
    ```

5. Поместите в папку data/ файл .env следующего формата

    ```python
        # токен телеграм бота, формат string
        TG_TOKEN = ''

        # телеграм_id админа бота, формат string
        # если админов несколько - указывать id последовательно в строке через пробел 
        ADMIN_TG_ID = ''

        # телеграм_id пары, формат string
        # используется в случае, если в распределении участвует нечётное количество пользователей
        # данный юзер обязательно должен быть зарегистрирован в боте и проставить статус "Не участвую"
        DEFAULT_PARE_iD = ''
    ```

6. В корневой папке с файлом main.py выполните команду:

    ```bash
        python3 main.py
    ```

7. В случае запуска бота на Windows, потребуется дополнительно скомпилировать файл .exe используя инструкцию и файлы из каталога

    ```text
    match_algoritm/lowlevel
    ```

    Потребуется редактирование пути до файла в match_algoritm/MatchingHelper.py в функции start
    Организация виртуального окружения также потребует команд соответствующих ОС Windows.

## Запуск проекта через Docker

00. Создать в директории data/match_algoritm_data/ пустые файлы input.txt output.txt temp.txt

1. сбилдить образ через Dockerfile

    ```bash
    docker build
    ```

2. Заполнить tbf поля в docker-compose.yml

3. Поднять контейнер

    ```bash
    docker compose up -d
    ```

Алгоритм компилируется при сборке.
