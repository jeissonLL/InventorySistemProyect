## Base de Datos
La base de datos de la aplicación fue desarrollada utilizando SQL Server. Se proporciona un archivo llamado bb.sql que contiene todas las queries necesarias para crear las tablas de la base de datos y agregar datos por defecto. Simplemente ejecute este archivo en su instancia de SQL Server para configurar la base de datos.

## Back-end
El back-end de la aplicación sigue una arquitectura de N capas y expone una API REST. Fue desarrollado utilizando .NET 7 y Entity Framework. Se implementaron varios patrones de diseño para garantizar una aplicación escalable y mantenible, incluyendo la inyección de dependencias y el uso de AutoMapper para facilitar la conversión de modelos a DTO (Data Transfer Objects).

## Capas
- BLL (Business Logic Layer): Esta capa contiene la lógica de negocios de la aplicación. Aquí se implementan las reglas y procesos que definen cómo se deben manipular los datos y se gestionan las operaciones del negocio.

- DAL (Data Access Layer): La capa de acceso a datos es responsable de la comunicación con la base de datos. Aquí se encuentran los repositorios y las consultas que permiten realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre la base de datos.

- DTO (Data Transfer Object): En esta capa se definen los objetos que se utilizan para transferir datos entre las diferentes capas de la aplicación. Los DTOs ayudan a encapsular los datos y a separar las preocupaciones entre la capa de datos y la capa de presentación.

- IOC (Inversion of Control): Esta capa se encarga de la inyección de dependencias, facilitando la creación de objetos y la gestión de sus dependencias. Utiliza contenedores IoC para resolver y gestionar las dependencias de los componentes de la aplicación.

- Model: En esta capa se ubican los modelos que representan las entidades de la base de datos. Estos modelos son utilizados por Entity Framework para mapear las tablas de la base de datos a objetos en el código.

- Utility: La capa de utilidades incluye componentes y servicios auxiliares, como AutoMapper, que se utilizan para convertir los modelos de la base de datos a DTOs y viceversa. Esta capa ayuda a mantener el código limpio y organizado, separando las responsabilidades de conversión de datos.

## Front-end
El front-end de la aplicación fue desarrollado utilizando Angular en su versión 14. Angular es un framework robusto y flexible para construir aplicaciones web de una sola página (SPA). Se utilizó Angular Material para proporcionar un conjunto de componentes de interfaz de usuario (UI) modernos y responsivos, facilitando el diseño y la implementación de la interfaz de usuario.

## Herramientas y Librerías Utilizadas
- Angular CLI: Utilizado para inicializar, desarrollar y mantener la aplicación Angular. Permite gestionar componentes, servicios, módulos, interfaces y otras partes de la aplicación de manera eficiente.

- Angular Material: Proporciona una colección de componentes de UI preconstruidos que siguen las pautas de diseño de Material Design. Estos componentes ayudan a crear una interfaz de usuario coherente y atractiva.

## Estructura del Proyecto
La estructura del proyecto Angular sigue las mejores prácticas para organizar los módulos, componentes, servicios y otros recursos de manera coherente. Cada módulo representa una funcionalidad específica de la aplicación, y los componentes dentro de esos módulos encapsulan partes de la interfaz de usuario y su lógica.


