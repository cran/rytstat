# rytstat 0.3.2
* Исправлена ошибка в функции `ryt_get_analytics()`:

```
! Can't unnest elements with missing names.
i Supply `names_sep` to generate automatic names.
```

# rytstat 0.3.1
* В функцию `ryt_get_videos()` добавлен аргумент `fields`, позволяющий указать нужные поля.
* В функцию `ryt_get_analytics()` добавлены следующие аргументы:
    * `sort` - Сортировка данных в отчёте
    * `max_results` - Ограничение на количество строк в отчёте
    * `start_index` - Начальный индекс строки, с которой необходимо получить данные.

Новые аргументы функции `ryt_get_analytics()` позволяют запрашивать топ видео за указанный период.
```r
# top video
  top_10_by_view <- ryt_get_analytics(
    '2022-06-01', '2022-06-30', 
    metrics = 'views',
    dimensions = 'video',
    sort = '-views', 
    max_results = 10
  )
  
```
* Исправлена ошибка в функции `ryt_get_report_list()`, изза которой не работали аргументы `created_after`, `start_time_at_or_after`, `start_time_before`.
* В случае если запрос `ryt_get_report_list()` не вернул никаких результатов, работа функции будет остановлена, а сама функция вернёт `NULL`. Ранее в таком случае функция возвращала таблицу из одного безымянного столбца и пустой строки.

# rytstat 0.3.0

## Новая функция
* В пакет добавлена функция `ryt_search()`, предназначенная для поиска видео, плей листов и каналов, не обязательно вашего авторства.

## Основное
* В функциях `ryt_get_video_details()`, `ryt_get_playlists()`, `ryt_get_channel_activities()`, `ryt_get_channels()` и `ryt_get_playlist_items()` аргумент `fields` переименован в `part`, и добавлен аргумент `fields`, который позволяет запрашивать отдельные поля частей запроса. Примеры работы с новыми аргументами добавлены в справку функции.

## Документация
* Расширена документации функций `ryt_get_video_details()`, `ryt_get_playlists()`, `ryt_get_channel_activities()`, `ryt_get_channels()` и `ryt_get_playlist_items()` в неё добавлены примеры с использованием аргумента `fields`, и добавлен перечень частей (parts) и полей (fields).

## Другое
* Вшитый в `rytstat` OAuth клиент был подтверждён Google, теперь все пользователи пакета могут использовать его для авторизациию

# rytstat 0.2.1

## Документация
* Исправлены ссылки в README и DESCRIPTION

# rytstat 0.2.0

## Новые функции
* Доработал функцию `ryt_get_playlists()` таким образом, что бы она разворачивала все вложенные столбцы.
* Добавлена функция `ryt_get_playlist_items()`, которая позволяет запросить элементы плейлиста YouTube.
* Добавлена функция `ryt_get_channels()`, которая позволяет получить метаданные по каналу.
* Добавдена функция `ryt_get_channel_activities()`, которая позволяет получить список активностей связанных с вашим каналом.
* Добавлена функция `ryt_get_comments()`, которая позволяет запросить список комментариев к видео или каналу.

## Исправления ошибок
* Исправлено поведение функции `ryt_get_analytics()`, ранее нельзя было изменить параметр `dimensions`, он всегда при запросе был равен 'day'.

## Названия функций
* Следующие функции были переименованы с целью сокращения их названий:
    * `ryt_reports_create_job()`      -> `ryt_create_job()`
    * `ryt_reports_get_job_list()`    -> `ryt_get_job_list()`
    * `ryt_reports_get_report_list()` -> `ryt_get_report_list()`
    * `ryt_reports_delete_job()`      -> `ryt_delete_job()`
    * `ryt_get_video_list()`          -> `ryt_get_videos()`
    
## Документация
* В документацию всех функций добавлены примеры кода. 
* Создан официальный сайт пакета `rytstat` - https://selesnow.github.io/rytstat/docs

## Прочее
* Начиная с версии 0.2.0 пакет требует разрешение https://www.googleapis.com/auth/youtube.force-ssl, которое позволяет rytstat просматривать комментарии.

# rytstat 0.1.0

* Добавлен `NEWS.md` для фиксации изменений в пакете.
* Пакет опубликован на CRAN.
