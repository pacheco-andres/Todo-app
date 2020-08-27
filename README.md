![BrightCoders Logo](readme_images/logo-bc.png)

# ToDo App

![cover](readme_images/cover.jpg)

## Pre-requisitos

Antes de iniciar debes instalar las siguientes herramientas, evaluar tu código e identificar posibles mejoras.

- [Instalar y utilizar Rubocop](https://github.com/bright-coders/commons/tree/master/topics/rubocop)
- [Instalar y utilizar Rubycritic](https://github.com/bright-coders/commons/tree/master/topics/rubycritic)
- [Instalar y utilizar SandiMeter](https://github.com/makaroni4/sandi_meter)

## Requerimientos funcionales

Yo should develop a TODO App that includes the following features:

Num | Feature | Notes
----- | ---- | ---- 
1 | Users should login to the App | [Clearance](https://github.com/thoughtbot/clearance) ó Devise/Omniauth  
2 | Users can create, read, update and delete (CRUD) lists of TODOs |
3 | Users cand CRUD taks on a list |
4 | Users can export their lists with their tasks to CSV and PDF files. |
5 | Users should receive weekly email including pending tasks | Using emails and BackgroundJobs with Sidekiq and Redis
6 | Users can update your profile: name, email, description and photo | Photo must be uploaded, you could use ActiveStorage for this task
7 | The app must include unit tests with Rspec and integration with Capybara |

## Requerimientos no-funcionales
- Rendimiento y escalabilidad
  - [Capáz de escalar de manera horizontal](https://rubygarage.org/blog/ruby-on-rails-is-scalable)
  - [Aplicar la metodología de los 12 Factores](https://12factor.net/)
  - Respuesta del servidor menor a los 200ms. 
- Seguridad
  - Cubrir las Top 10 vulnerabilidades OWASP (Opcional)
     - [OWASP Top ten](https://owasp.org/www-project-top-ten/)
     - [OWSAP Ruby on Rails Cheatsheet](https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheat_Sheet.html)
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias
  - Puntuación en Rubycritic: por lo menos 95 en la carpeta de la App y por lo menos 65 en la carpeta de pruebas
  - Utilizar SandiMeter para analizar el código y utilizar el resultado para hacer mejoras
  - Presentación correcta en las versiones más recientes de los principales navegadores: Edge, Chrome, Safari y Firefox
  - [Configuración de un servidor de integración continua como Travis CI o Circle CI](https://circleci.com/features/ruby/)

## Inspiración
En la carpeta [readme_images](/readme_images) hay algunes ejemplos de interfaz que te pueden servir de inspiración para el diseño de la UI de tu App

  ## Tecnologías
- Ruby on Rails en el backend
- PostgreSQL como base de datos principal
- CSS: libertad para utilizar cuaquier framework o librería, preferentemente SASS
  - Por ejemplo puede sutilizar Bootsrap y junto con [bootstrap_form](https://github.com/bootstrap-ruby/bootstrap_form) para tus formularios
- Javascript: libertad para utilizar cualquier framework o librería, preferentemente sin jQuery
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)
## Entregable
- Código fuente en Github 
  - Debe incluir README con información sobre como configurar el proyecto
  - Los commits de Git deben ser significativos
- Demo de la App correndo en heroku
- Libertad para utilizar cualquier diseño, imágenes, etc, que considere necesarios y apropiados

## Evaluación / Revisión
- Cumplimiento de requerimientos funcionales
- Cumplimiento de requerimientos no funcionales 
- Participación diaria de todos los integrantes del equipo
- Entrega dentro del tiempo establecido

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto, así como los integrantes de este equipo

## Enlaces
[Encuentra aquí una lista completa de recursos de ayuda](https://github.com/bright-coders/commons/tree/master/topics/resources)
