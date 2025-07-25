#!/bin/bash

# Скрипт запуска рабочего окружения Python-проекта

echo "🔄 Активируем виртуальное окружение..." 
source venv/bin/activate 
if [ $? -ne 0 ]; then
  echo "❌ Не удалось активировать виртуальное окружение. Убедись, что оно создано в ./venv" 
  exit 1 
fi

echo "✅ Виртуальное окружение активировано." 

echo ""
echo "🔍 Статус Git:"
git status

echo "" 
echo "📦 Установленные зависимости (pip freeze):"
pip freeze

echo "" echo "🧠 Напоминание:"
echo "  - Для установки новых пакетов: pip install <package>"
echo "  - Чтобы сохранить зависимости: pip freeze > requirements.txt"
echo "  - Чтобы закоммитить: git add . && git commit -m \"...\""
echo "  - Чтобы отправить: git push"
echo ""
echo "🚀 Готов к работе!"
