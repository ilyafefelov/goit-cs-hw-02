#!/bin/bash

# Масив з вебсайтами для перевірки
websites=("https://google.com" "https://facebook.com" "https://twitter.com")

# Назва файлу логів
log_file="website_status.log"

# Очищення файлу логів перед новою перевіркою
> "$log_file"

# Перевірка кожного сайту зі списку
for website in "${websites[@]}"
do
    # Використовуємо curl для отримання статус-коду з обробкою переадресації
    status_code=$(curl -L -o /dev/null -s -w "%{http_code}\n" "$website")

    # Перевірка статусу
    if [ "$status_code" -eq 200 ]; then
        echo "$website is UP"
        echo "$website is UP" >> "$log_file"
    else
        echo "$website is DOWN (status code: $status_code)"
        echo "$website is DOWN (status code: $status_code)" >> "$log_file"
    fi
done

# Виведення повідомлення про запис результатів у файл логів
echo "Результати перевірки записано у файл $log_file"