# POWER PLAN
Script de batch que cambia la configuracion de energía de tu ordenador dependiendo de si este está enchufado o si esta utlizando batería

## COMO USAR
Para poder utilizar este script hay varios pasos a realizar: 
## DESCARGAR EL ARCHIVO power_plan.bat

## CREAR 2 POWER PLAN DIFERENTES ENTRE LOS CUAL CAMBIAR
Entreamos en la configuracion de energía de Windows y creamos 2 planes diferentes (si no los tenemos creados de antes) entre los cual va a alternar nuestro programa, configuramos los planes como queramos.

## OBTENER LOS GUID DE LOS POWER PLAN
Para que el script pueda alternar entre los planes de energía tenemos que saber su GUID, para esto abrimos un terminal y usamos el comando "powercfg /list" lo cual nos devuelve una lista con todos los planes de energía que tenemos configurados en nuestro pc. Este comando nos devuelve algo de este estilo: 
GUID de plan de energía: XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX  (Nombre_del_plan)

A nosotros solo nos interesa el GUID o idetificador del plan, es decir, el el codigo que tiene una estructura parecida a esta: **XXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX**

## REMPLAZAR LOS GUID DEL .BAT
Ahora que hemos obtenido los GUID de los 2 planes tenemos que modificar el .bat, para ello tenemos que hacer click derecho, más opciones y editar, con esto se nos abrirá el bloc de notas y veremos el código del programa, remplazamos el texto **GUID_BATERIA** por el GUID (numero que hemos obtenido antes al ejecutar el comando en el cmd) por el GUID del plan de energía que queremos tener activo cuando el sistema este funcionando con batería. 

Hacemos lo mismo con el otro GUID, remplazamos el texto **GUID_ENCHUFADO** por el GUID (numero que hemos obtenido antes al ejecutar el comando en el cmd) por el GUID del plan de energía que queremos tener activo cuando el sistema este funcionando conectado a la red.

Ahora ejecutamos el .bat como administrador y el programa estaría funcionando.

# ERRORES, FUNCIONAMIENTO Y UTILIDAD

## ¿COMO FUNCIONA EL CÓDIGO?
El código ejecuta un bucle infinito, cada 5 segundos se verifica si el ordenador está trabajado con batería o si esta trabajando enchufado a la red, cuando verifica el estado, cambia el plan de energía

## ¿ES ÚTIL?
Realmente el script no es muy util, ya que con la configuración de energía avanzada podemos elegir el comportamiento que queremos que tenga nuestro portatil dependiendo de si esta con batería o si esta conectado a la red

## ERRORES COMUNES
Los GUID de los planes de energía pueden cambiar si se modifica algun apartado del plan, por lo tanto hay que revisar que el GUID sea correcto cuando ejecutamos el script
