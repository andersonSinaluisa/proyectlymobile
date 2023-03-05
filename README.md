# Gestor de proyectos en Flutter
Este es un ejemplo de una aplicación móvil construida en Flutter que se conecta a una base de datos en Supabase para la gestión de proyectos.

Funcionalidades
- Crear, leer, actualizar y eliminar proyectos.
- Asignar miembros a los proyectos.
- Establecer fechas de inicio y finalización de los proyectos.
- Ver el estado de los proyectos.

### Configuración
Para utilizar esta aplicación, necesitas seguir los siguientes pasos:

- Clonar este repositorio en tu computadora local.
- Crear una cuenta en Supabase y una base de datos.
- Configurar las variables de entorno en un archivo .env en la raíz del proyecto con las credenciales de tu base de datos de Supabase.
- Ejecutar flutter pub get para instalar las dependencias necesarias.
- Ejecutar flutter run para iniciar la aplicación.
- Estructura del proyecto

### El proyecto está organizado de la siguiente manera:

- lib/: Contiene el código fuente de la aplicación.
- models/: Contiene las clases que representan los modelos de la base de datos.
- services/: Contiene los servicios que interactúan con la base de datos de Supabase.
- views/: Contiene las vistas de la aplicación.
- test/: Contiene los tests de la aplicación.
- pubspec.yaml: Archivo de configuración de las dependencias.

### Dependencias
Esta aplicación utiliza las siguientes dependencias:

- flutter_bloc: Para implementar la arquitectura de bloques en la aplicación.
- supabase: Para conectarse a la base de datos de Supabase.
- intl: Para formatear fechas y horas en la aplicación.

### Contribuir
Si deseas contribuir a este proyecto, puedes crear un fork del repositorio y enviar tus pull requests.

Licencia
Este proyecto está bajo la Licencia MIT. Puedes leer el archivo LICENSE para más detalles.
