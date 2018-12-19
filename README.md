### rails_template

Template básico para generar apps en Rails con configuración extra de inicio, añadiendo algunas gemas que uso prácticamente siempre. Está adaptado al desarrollo en local usando Vagrant.
Basado en: [jumpstart, de Chris Oliver](https://github.com/excid3/jumpstart)

Clonar directorio en carpeta /template/

Para iniciar app con postgres como db:

`rails new myapp -d postgresql -m template/template.rb`

Funcionalidad añadida:

* bootstrap 4.1

* Font-Awesome

* local_time (con traducción al castellano)

* data_confirm_modal

* better_errors

* rubocop

* devise (incluyendo traducciones al castellano para las vistas, en construcción)

* configuración para db en local.






