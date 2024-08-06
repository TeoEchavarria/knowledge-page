#import "/src/book.typ": *

#show : book-page.with(title: "Ceros de Multiplicidad")

= Ceros de Multiplicidad

Cuando simplemente hay un corte con el eje $x$, se dice que es un cero simple *($p$ es un cero simple de $f$)*

Analiticamente, la multiplicidad de un cero p de una funcion $f$ esta caracterizado a continuacion.

Una solución $p$ de $f(x) = 0$ es un cero de multiplicidad de $f$, si para $x != p$ podemos escribir
$f(x) = (x - p)^m q(x)$
donde
$lim_{x arrow p} q(x) != 0$

#image("assets/images/ceros-multiplicidad.png")

#info(title: "Interpretación")[
- Multiplicidad impar (1, 3, 5, ...): Cuando un cero tiene una multiplicidad impar, la gráfica de la función cruza el eje $x$ en ese punto. Por ejemplo, para una multiplicidad de 1, la gráfica simplemente cruza el eje en ese punto. 
- Multiplicidad par (2, 4, 6, ...): Si un cero tiene multiplicidad par, la gráfica de la función toca el eje $x$ en ese punto y vuelve a la dirección de la cual venía, sin cruzar el eje.
]

#abstract(title: "Resumiendo")[
la multiplicidad de cero es cuántas veces se debe derivar $f(x)$ antes de obtener un valor no nulo en $p$
]
