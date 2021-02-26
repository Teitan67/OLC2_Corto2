# OLC2_Corto2
Corto 2.
Compiladores 2.

NOTA: La aplicacion es echa con javascript puro por lo que se puede descargar y usar de manera local sin instalar absolutamente nada!!

Esquema de traducción dirigida por la sintaxis para generar código 3 direcciones
![Alt text](Screenshot2.png?raw=true "Figura de la aplicacion")


La aplicacion consiste en una interfaz grafica sencilla donde podemos colocar entradas de expresiones aritmeticas como:
(a + b) * (a + c)
x * x

Cabe resaltar que podemos colocar varias al mismo tiempo si colocamos ; al final como esta la siguiente entrada:
(a + b) * (a + c);
x * x;
y * y;
x2 + y2;
b + c + d;
a * a + b * b;
5 + 2 * b;
6 + 7 * 10+5 / 1;
((7 + 9)/(((3 + 1) * (6 + 7) + 8) * 7) / 9) + 100;
7 * 9 - 89 + 63;

Usando la gramatica vista en clase podemos hacer la traduccion, en la implementacion se especifico la presedencia con la herramienta 
%left '+' '-'
%left '*' '/'

Luego creando un metodo que generara variables auxiliares se genera la traduccion, traduciendo linea a la vez y subiendo la variable para que se pudiera generar el codigo 3 direcciones.

Las entradas del ejercicio obtubieron estos resultados:

(a + b) * (a + c);

t0=a+b
t1=a+c
t2=t0*t1
La respuesta es :t2

Y asi se da una a una, para la entrada con ; para evaluarlas todas a la vez se uso la entrada que se muesta arriba y obtuvimos el siguiente resultado:

t0=a+b
t1=a+c
t2=t0*t1
La respuesta es :t2

t3=x*x
La respuesta es :t3

t4=y*y
La respuesta es :t4

t5=x2+y2
La respuesta es :t5

t6=b+c
t7=t6+d
La respuesta es :t7

t8=a*a
t9=b*b
t10=t8+t9
La respuesta es :t10

t11=5
t12=2
t13=t12*b
t14=t11+t13
La respuesta es :t14

t15=6
t16=7
t17=10
t18=t16*t17
t19=t15+t18
t20=5
t21=1
t22=t20/t21
t23=t19+t22
La respuesta es :t23

t24=7
t25=9
t26=t24+t25
t27=3
t28=1
t29=t27+t28
t30=6
t31=7
t32=t30+t31
t33=t29*t32
t34=8
t35=t33+t34
t36=7
t37=t35*t36
t38=t26/t37
t39=9
t40=t38/t39
t41=100
t42=t40+t41
La respuesta es :t42

t43=7
t44=9
t45=t43*t44
t46=89
t47=t45-t46
t48=63
t49=t47+t48
La respuesta es :t49






