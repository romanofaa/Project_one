#!/bin/bash

# Скрипт стандартного окончания работы с проектом
# Коммент для коммита нужно вводить вручную в файле

pip freeze > requirements.txt
git add .
git commit -m "Изменения за день"
git push
