### rails_template

Template básico para generar apps en Rails con configuración extra de inicio, añadiendo algunas gemas que uso prácticamente siempre. Está adaptado al desarrollo en local usando Vagrant.

Clonar directorio en carpeta /template/

Para iniciar app con postgres como db:

`rails new myapp -d postgresql -m template/template.rb`

Funcionalidad añadida:

* bootstrap 4.1

* Font-Awesome

* local_time

* data_confirm_modal

* better_errors

* rubocop

* devise (incluyendo traducciones al castellano para las vistas, en construcción)

* configuración para db en local.






