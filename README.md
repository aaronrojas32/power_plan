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
