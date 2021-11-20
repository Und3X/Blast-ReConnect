# Blast ReConnect
## [Скачать](https://github.com/Und3X/Blast-ReConnect/releases)
### [Поддержать автора рублем](https://yoomoney.ru/to/4100116150755944)

## Зависимости (установить перед запуском скрипта)
- [SAMP 0.3.7 R1](http://files.sa-mp.com/sa-mp-0.3.7-install.exe)
- [CLEO 4](https://cleo.li)
- [SAMPFUNCS v5.4.1 ](https://www.blast.hk/threads/17/) (для работы может потребуется установка [DirectX и Visual C++ Redistributable](https://getfile.dokpub.com/yandex/get/https://disk.yandex.ua/d/Qb-D68L20pn0RA))
- [Moonloader v026.5](https://www.blast.hk/threads/13305/)

## Установка
- Установить все из пункта **Зависимости** в корневую папку игры  _(если уже стоят, пропускаем)_
- Переместить скрипт **"BlastReConnect.lua"** в папку moonloader корневой папки игры

## Использование
Для быстрого перезахода на сервер, нажмите комбинацию клавиш **Shift + 0**. Время, через которое произойдет реконнект можно настроить в переменной: 
```
local DEFAULT_TIMEOUT = 15 
```
Где **15** - время, через которое будет выполнено подключение к серверу (нужно для srp и подобных, где стоит защита от быстрых переподключений).
Так же можно указать время через команду **/rec N** где **N** это количество секунд через которе вы переподключитесь.
Команду можн6о так же сменить через переменную
```
local CMD = "rec"
```
Где **rec** - сама команда.

Все изменения делаются в файле **"BlastReConnect.lua"**

## Связь
- Автор: https://vk.com/un_dex
- Группа: https://vk.com/und3x_mod
- Git Issues: https://github.com/Und3X/Blast-ReConnect/issues
