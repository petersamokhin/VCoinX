# VCoinX
VCoinX - модификация для [VCoin](https://github.com/xTCry/VCoin), в которой вырезаны пожертвования и комиссии от платежей, а также она имеет несколько своих плюшек.

## Установка
Установка у VCoinX гораздо легче, чем у оригинального бота, но скачать [Node.JS версии 8.0.0 или выше](https://nodejs.org/) вам всё же придется.

После скачивания Node.JS скачиваем самого бота, сделать это можно нажав на кнопку **Clone or Download** -> **Download ZIP**, распаковываем скачанные файлы в *любую* папку.

Распаковали? Отлично! Приступаем к настройке, для начала, откройте файл `launch` формата `.bat` для Windows и `.sh` для Linux, ожидайте закрытия окошка.

Окошко закрылось? Все замечательно! Теперь приступим к настройке аккаунта для игры.

## Настройка с помощью логина и пароля.
Открываем `userconfig.json` любым текстовым редактором, можно даже блокнотом! В поле `LOGIN` между кавычек вставляем номер телефона от страницы ВКонтакте, а в поле `PASSWORD` вставляем пароль.

Не забываем сохранять настройки, после того, как сохранили, снова открываем файл с названием `launch` формата `.bat` для Windows и `.sh` для Linux. *Вы великолепны!*

## Настройка с помощью токена.
Открываем `userconfig.json` любым текстовым редактором, можно даже блокнотом! В поле `VK_TOKEN` между кавычек вставляем [токен](#получение-токена), а о том, как [его](#получение-токена) получить, я расскажу чуть позднее.

В принципе, нам достаточно одного токена, но если Вам интересны другие пункты, то пролистайте ниже.

Не забываем сохранять настройки, после того, как сохранили, снова открываем файл с названием `launch` формата `.bat` для Windows и `.sh` для Linux. *Вы великолепны!*

Если у вас возникли какие-либо проблемы, то пишите **в группу ВКонтакте**, **на сервер в Discord** или попросите совета у *участников беседы*.

[![Группа ВКонтакте](https://img.shields.io/badge/Группа-ВКонтакте-yellow.svg)](https://vk.com/vcoinx)
[![Беседа1 ВКонтакте](https://img.shields.io/badge/Беседа-ВКонтакте-yellow.svg)](https://vk.me/join/AJQ1d8Wp/g5Rju0b0CqwtSbh)
[![Беседа2 ВКонтакте](https://img.shields.io/badge/Беседа-ВКонтакте-yellow.svg)](https://vk.me/join/AJQ1d8fgFA9nDCK4vtZmN_96)
[![Беседа3 ВКонтакте](https://img.shields.io/badge/Беседа-ВКонтакте-yellow.svg)](https://vk.me/join/AJQ1d5SvLA/9NLWhykOAKrdM)
[![Сервер в Discord](https://img.shields.io/badge/Сервер-Discord-yellow.svg)](https://discord.gg/mpzttuu)

## Параметры конфига пользователя
| Параметр    | Описание                                                |
|-------------|---------------------------------------------------------|
|  LOGIN      | Номер телефона от аккаунта (для автополучения токена)   |
| PASSWORD    | Пароль от аккаунта (для автополучения токена)           |
| VK_TOKEN    | [Токен страницы пользователя](#получение-токена)        |
| IFRAME_URL  | Ссылка на приложение                                    |
| GROUP_ID    | Уникальный индефикатор сообщества (без минуса)          |

> При указании токена, ссылку указывать не надо.

### Настройка без использования аругументов
Можно избежать всякой возни с аргументами, ведь в обновлении `1.3.7` была введена настройка с помощью `botconfig.json` файла.

### Использование аргументов
Можно избежать всей этой возни с настройками, если Вы разбираетесь в запуске файлов с аргументами, сейчас я перечислю все аргументы.
* -tforce		    - принудительно использовать токен. (если в `userconfig.js` указан)
* -url [URL]		  - принудительно задать *URL*.
* -t [TOKEN]	  - принудительно задать *VK TOKEN*.
* -flog			    - использование продвинутых логов.
* -autobeep     - автоматическое проигрывание звука ошибки при ошибках. (по идее работает только на Windows)
* -autobuy		  - автоматическое приобретение улучшений.
* -autobuyitem	- указание улучшения для приобретения.
* -smartbuy     - умная авто-покупка улучшений.
* -setlimit     - установить лимит коинов / тик, до которого будет рабоать авто-закупка и умная покупка.
* -help			    - вывод списка доступных команд.
* -tsum [SUM]	  - автоматический перевод указанного количества коинов. (укажите больше 9000000 для перевода всей суммы)
* -to [ID]		  - указание страницы для автоматического перевода.
* -ti [SECS]	  - указание интервала для автоматического перевода.
* -tperc [PERCENT]	  - указать сумму для авто-перевода в процентах. (будет работать в приоритете над суммой)
* -black        - отключение цветов в консоли.
* -noupdates    - отключение сообщений об обновлениях.
* -noautoupdates - отключение автообновления.
* -hidejunk     - отключение сообщений про позицию в топе, количестве коинов и скорости

##### Загвоздки и подводные камни в аргументах
> Linux: Надо обратить внимание, что перед каждым символом `&` должен быть обратный слэш (`\&`).

> Windows: при принудительном использовании ссылки, её необходимо указать в кавычках.

### Получение токена
[Перейдите по ссылке](https://vk.cc/9f4IXA), нажмите "Разрешить" и скопируйте часть адресной строки после access_token= и до &expires_in (85 символов).

### Получение расширенного токена
**Осторожно!** Если Вы передадите данный токен третьим лицам, то они могут **полностью** завладеть вашей страницей.

Для получения расширенного токена, скопируйте ссылку ниже, замените обособленные двумя звездочками надписи на ваш логин и пароль соответственно, после чего перейдите по ссылке и скопируйте часть адресной строки от access_token= до &expires_in (85 символов).

`https://oauth.vk.com/token?grant_type=password&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH&username=**login**&password=**password**`

## Список доступных команд для использования

- `help`		- помощь.
- `info`    - отображение основной информации о боте.
- `debug`   - отображение расширенной информации о боте.
- `run`			- запустить.
- `stop`		- остановить.
- `tran(sfer)`	- перевод коинов. (только при запущенном процессе)
- `getuserscore` - получить информацию о количестве
- `autobeep`  - автоматическое проигрывание звука ошибки при ошибках. (по идее работает только на Windows)
- `autobuy(ab)`		- изменить статус работы авто-закупки.
- `autobuyitem` - указать предмет для авто-закупки.
- `smartbuy(sb)`    - включить умную покупку.
- `percentforsmartbuy(psb)`   - установить процент от количества коинов, который будет выделяться на умную покупку.
- `setlimit(sl)`    - установить лимит коинов / тик, до которого будет рабоать авто-закупка и умная покупка.
- `to` 			- указать ID пользователя для авто-перевода и автоматически его включить.
- `ti` 			- указать интервал в секундах для авто-перевода.
- `tsum`		- указать сумму для авто-перевода. (укажите больше 9000000 для перевода всей суммы)
- `tperc`		- указать сумму для авто-перевода в процентах. (будет работать в приоритете над суммой)
- `prices`		- получить актуальный список цен.
- `buy`			- покупка. (только при запущенном процессе)
  - `cursor`		- приобрести улучшение `Курсор` в размере 1 единицы.
  - `cpu`			- приобрести улучшение `Видеокарта` в размере 1 единицы.
  - `cpu_stack`		- приобрести улучшение `Стойка видеокарт` в размере 1 единицы.
  - `computer`		- приобрести улучшение `Суперкомпьютер` в размере 1 единицы.
  - `server_vk`		- приобрести улучшение `Сервер ВКонтакте` в размере 1 единицы.
  - `quantum_pc`	- приобрести улучшение `Квантовый компьютер` в размере 1 единицы.
  - `datacenter`	- приобрести улучшение `Датацентр` в размере 1 единицы.
  - `bonus` 		- выдает случайное количество монет, можно использовать только один раз.

# Автор(ы) бота
* [xTCry](https://github.com/xTCry) - разработчик оригинального VCoin.
* [cursedseal](https://github.com/cursedseal) - разработчик модификации VCoinX.

# Поддержавшие проект
* [Jeronyson](https://github.com/Jeronyson) - очень сильно помог при обновлении серверов, фиксы багов.

## Поддержать разработчиков
[![Донат разработчику оригинальной версии](https://img.shields.io/badge/Донат-VCoin-orange.svg)](https://qiwi.me/xtcry)
[![Донат разработчику VCoinX](https://img.shields.io/badge/Донат-VCoinX-orange.svg)](https://qiwi.me/vcoinx)

# RoadMap
- [x] Переписать ReadMe, сделав его более читабельным и понятным.
- [x] Добавить авто-закупку предметов.
- [x] Добавить дата-центр.
- [x] Переформатировать цвет текста.
- [x] Поддержка нескольких предметов в авто-закупке.
- [x] Сделать автоматический перебор серверов.
- [ ] Переписать код, тем самым выдать VCoinX независимость от VCoin.
