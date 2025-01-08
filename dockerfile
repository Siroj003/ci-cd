# Rasm uchun asos sifatida Python 3.9 ishlatiladi
FROM python:3.9-slim

# Ishchi katalogni o'rnatish
WORKDIR /app

# Loyihaning kodini konteynerga nusxalash
COPY crudproject/ /app/

# Kerakli kutubxonalarni o'rnatish
RUN pip install --no-cache-dir -r requirements.txt

# Django ilovasida ishlatiladigan portni ochish
EXPOSE 8000

# Django serverni ishga tushirish buyrug'i
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
