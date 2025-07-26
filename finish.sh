#!/bin/bash

# Скрипт завершения работы над проектом

echo "📝 Введите комментарий для коммита:"
read commit_msg

echo ""
echo "📦 Команды, которые будут выполнены:"
echo "  1. pip freeze > requirements.txt"
echo "  2. git add ."
echo "  3. git commit -m \"$commit_msg\""
echo "  4. git push"
echo ""

echo "🚀 Выполняем команды..."

# Обновление списка зависимостей
echo "👉 pip freeze > requirements.txt"
pip freeze > requirements.txt

# Добавление файлов в индекс
echo ""
echo "👉 git add ."
git add .

# Коммит
echo ""
echo "👉 git commit -m \"$commit_msg\""
git commit -m "$commit_msg"

if [ $? -ne 0 ]; then
  echo "❌ Коммит не выполнен. Возможно, нет изменений для коммита."
  exit 1
fi

# Пуш
echo ""
echo "👉 git push"
git push

echo ""
echo "✅ Всё готово. Зависимости сохранены, изменения закоммичены и отправлены на GitHub."