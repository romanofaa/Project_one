#!/bin/bash

# Скрипт завершения работы над проектом

echo "📝 Введите комментарий для коммита:"
read commit_msg

echo ""
echo "📦 Команды, которые будут выполнены:"
echo "  1. git add ."
echo "  2. git commit -m \"$commit_msg\""
echo "  3. git push"
echo ""

echo "🚀 Выполняем команды..."

echo "👉 git add ."
git add .

echo ""
echo "👉 git commit -m \"$commit_msg\""
git commit -m "$commit_msg"

if [ $? -ne 0 ]; then
  echo "❌ Коммит не выполнен. Возможно, нет изменений для коммита."
  exit 1
fi

echo ""
echo "👉 git push"
git push

echo ""
echo "✅ Всё готово. Изменения отправлены на GitHub."
