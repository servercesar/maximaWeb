# maximaWeb

Despliegue de maxima para uso web en docker

El proyecto esta desplegado en una imagen de php7.4-apache, en el dockerfile se instalan las dependencias necesarias para instalar maxima, el packete para debian fue comprimido desde su repo oficial (https://sourceforge.net/p/maxima/code/ci/master/tree/) se copia al contenedor y se instala.

En la carpeta app se aloja el proyecto web Yamwi, el mismo esta compartido con un volumen local para su facil edicion. 

Puesta en marcha: Clonar el repo, ingresar a la carpata y levantar el proyecto con un docker-compose


