1. Добавить Memcached и php-расширение (если есть)
2. По умолчанию переклчючить хранение php-сессий в memcached
3. Добавить Redis и php-расширение
4. Написать скрипт автоматического переключения версий php
5. Исправить установку nvm и node.js
6. Вынести в конфиг порты apache, nginx и т. д.
7. Установить composer и phing

===============================================

Добавить php-zts и расширение Pthreads (проверить или будет нормально работать с имеющимися версиями php).
Добавить расширение pcntl-fork.
Сделать, чтобы можно было выбрать в конфиге, какие версии php установятся.