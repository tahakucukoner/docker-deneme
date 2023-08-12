#Python tabanındaki imaj için python sürümü
FROM python:3.11.4

#Uygulamanın çalışacağı dizin
WORKDIR /app

#Projede kullanılacak bağımlılıkların kopyalama komutu
COPY requirements.txt .

#Bağımlılıkların yüklenme komutu
RUN pip install --no-cache-dir -r requirements.txt

#Projenin dosyalarını kopyalama komutu
COPY . .

#Uygulama çalıştırma komutları
CMD ["python","demo.py"]

#Port bilgisi göstermek için belirtilir
EXPOSE 5050