[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/LITHUM1/Auto-Backup/blob/main/README.md)

Объяснение:

Аргументы: Скрипт теперь ожидает три аргумента:

SOURCE_DIR: Директория, которую вы хотите сохранить.
DEST_DIR: Директория, где будет сохранена резервная копия.
LOG_FILE: Файл, в который будут записываться логи.

Использование: Скрипт проверяет, переданы ли ровно три аргумента.
Если нет, он выводит сообщение об использовании и завершает работу.
Переменные SOURCE_DIR, DEST_DIR и LOG_FILE устанавливаются на основе переданных скрипту аргументов.

Чтобы запустить скрипт, сначала необходимо сделать его исполняемым:


```
chmod +x backup.sh
```

Запуск скрипта из терминала с необходимыми тремя аргументами:

```
./backup.sh /path/to/source /path/to/backup /path/to/logfile.log
```

Это позволяет вам указывать разные директории и файлы логов каждый раз при запуске скрипта, что делает его более гибким.
