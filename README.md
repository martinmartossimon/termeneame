# TERMENEAME
Es una aplicación en python3 y selenium que carga las noticias de la portada de https://old.meneame.net y las muestra en la terminal de linux. Quizás no sea la forma óptima de hacerlo (usando Selenium) pero es lo que estoy aprendiendo actualmente, por lo que decidí usar esta tecnología para practicar con este servicio.


## Instalando:
Esta aplicación depende de las librerías python: selenium por lo que para poder usarlo hay que instalarlo previamente
```
git clone ''
pip3 install -r requirements.txt

```

## Otros requisitos:
El host donde se instala debe tener algún navegador instalado (firefox o chrome) además de geckodriver. Si se va a correr en una instancia de docker hay que modificar el Dockerfile para que tome la versión correspondiente de geckodriver(arquitectura amd64 o arm64)
