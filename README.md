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


## Parametrizar
Por defecto viene configurado para usar google chrome ya que se ejecuta más rápido, pero se puede setear para que use firefox. Hay que editar directamente el archivo python con el ejecutable y modificar esta parte según el caso:
![configuracion1](https://user-images.githubusercontent.com/16241139/214390036-ab229c54-efd7-4000-b2cf-8d54a80033b7.png)

También se puede configurar una especie de paginación para que sea más fácil leer los artículos.
![configuracion2](https://user-images.githubusercontent.com/16241139/214390104-083c144c-60c6-4460-b90a-2c1989adf52d.png)


### Docker
En docker hemos de modificar el Dockerfile para que tome una versión de geckodriver para arquitecturas amd64 o arm64 según nuestro caso.

![imagen](https://user-images.githubusercontent.com/16241139/214390496-20ee42b4-b778-4c44-8bc6-00b619d16d21.png)

Procedimiento:
Una vez que estamos en el directorio clonado, hacemos:
```bash
#Generamos la imagen:
docker build -t termeneame .

#Ejecutamos el contenedor:
docker run termeneame:latest
```
![imagen](https://user-images.githubusercontent.com/16241139/214392762-aa5baccc-552e-4ebd-8b58-b70375ac9c20.png)

En raspberry es muy lento, pero funciona.
