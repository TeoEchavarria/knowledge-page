#import "/src/book.typ": *

#show : book-page.with(title: "Distribucion Normal")

= Distribucion Normal


En la naturaleza fenomenos como temperatura, precipitaciones, presion atmosferica, mediciones en organismos vivos, notas o puntajes en pruebas de admision o de aptitud, errores en instrumentacion, proporciones de errores en diversos procesos, etc. Esta distribucion es la que los modelos mejor.

La funcion_densidad_probabilidad para una variable_aleatoria normal es:  $ f(x) = 1/( sigma  sqrt(2 pi)) e^(- 1/2  ( (x - mu)/(sigma))^2)  $ 

Con $- infinity < x < infinity, mu in RR, sigma > 0$


#info()[Notemos por la grafica como la distribucion normal es simetrica]

  
 $ E[X] = mu, V[X] = sigma^2 $ 

Para calculal la probabilidad de que este entre un $x_1$ y $x_2$ lo que hacemos es:
 $ P(x_1 < X < x_2) = integral_(x_1)^(x_2) (1)/(sigma sqrt(2pi)) e^(-((x-mu)^2)/(2sigma^2)) d x $ 
Que en $R$ el comando seria algo como: 

```R
pnorm(x_2, E, sqrt(Var)) - pnorm(x_1, E, sqrt(Var))
```

Dado que en si la funcion `pnorm` es $ P(X <= a) $ 

== Propiedades 

Dichas propiedades son extrapolables a cualquier distribucion normal con paramentros $mu, sigma$ diferente, dado que toda normal puede pasarse a una **normal estandar**

- $P(Z < -z) = P(Z > z) $
- $P(Z >= -z) = P(Z <= z) $  
- $P(-z < Z <= 0) = P(0 < Z <= z) $ 
- $P(Z < 0) = P(Z > 0) = (1)/(2 )$
- $P(|Z| < z) = 2P(Z < z) - 1 $
- $P(-z_1 < Z < -z_2) = P(z_2 < Z < z_1) $.
