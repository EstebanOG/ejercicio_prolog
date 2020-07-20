# Ejercicio 8: Árbol genealógico
### Árbol genealógico desarrollado en Prolog
##### Modelos de programación II - G.020-82

Árbol genealógico desarrollado en Prolog


#### Diagrama:

![](https://github.com/FelipeH22/ejercicio_prolog/blob/master/assets/FamiliaProlog_1.png)

> Diagrama familiar 1 del proyecto base.


![](https://github.com/FelipeH22/ejercicio_prolog/blob/master/assets/FamiliaProlog_2.png)

> Diagrama familiar 2 del proyecto base.

#### Descripción



#### Ejecutar proyecto
```
~$ swipl -f arbol_genealogico.pl
```

#### Ejecutar método específico
```
?- hijode(Juan,Maria).
```

salida:
```
    Juan = 'Felipe',
    Maria = 'Esteban'
```

Métodos disponibles:

Método | # Parámetros
------------- | -------------
abuelode(A,B)  | 2
hijode(A,B)  | 2
tiode(A,B) | 2
bisabuelode(A,B)  | 2
casadocon(A,B)  | 2
esfeliz(A)  | 1

Salir de Prolog
```
?- halt.
```

#### Estructura del proyecto
+ assets/
    + FamiliaProlog.png
    + FamiliaProlog1.png
    + FamiliaProlog2.png
+ arbol_genealogico.pl


#### Equipo de trabajo

Integrante  | Código
------------- | -------------
Cristhian Mauricio Yara Pardo | 20181020081
Juan Esteban Olaya García | 20171020135
Juan Felipe Herrera Poveda | 20181020077