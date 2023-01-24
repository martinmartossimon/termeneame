# TERMENEAME
Es una aplicación en python3 y selenium que carga las noticias de la portada de https://old.meneame.net y las muestra en la terminal de linux. Quizás no sea la forma óptima de hacerlo (usando Selenium) pero es lo que estoy aprendiendo actualmente, por lo que decidí usar esta tecnología para practicar con este servicio.


## Instalando:
Esta aplicación depende de las librerías python: selenium por lo que para poder usarlo hay que instalarlo previamente
```bash
git clone 'https://github.com/martinmartossimon/termeneame.git'
cd termeneame/
pip3 install -r requirements.txt
```

También requiere: geckodriver -> https://github.com/mozilla/geckodriver/releases. Sólo descargar la última versión, descomprimir y copiar en /usr/local/bin/
```bash
#Ejemplo
wget https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && \
tar -xzvf https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && \
mv geckodriver /usr/local/bin
```
Se puede verificar que geckodriver está bien instalador con el comando:
```bash
geckodriver -v
```
![geckodriver](https://github.com/martinmartossimon/termeneame/blob/main/geckodriver.png)

#### Otros requisitos:
El host donde se instala debe tener algún navegador instalado (firefox o chrome) además de geckodriver. Si se va a correr en una instancia de docker hay que modificar el Dockerfile para que tome la versión correspondiente de geckodriver(arquitectura amd64 o arm64)


## Testeo de funcionamiento
En el mismo path donde hemos clonado el repositorio ejecutamos:
```bash
./termeneame
```
![termeneame](https://github.com/martinmartossimon/termeneame/blob/main/termeneame.png)


