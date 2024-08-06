#import "/src/book.typ": *

#show : book-page.with(title: "Teorema : Taylor")

= Teorema : Taylor

Supongamos que $f in C^n [a, b]$, que $f^((n+1))$ existe en $(a, b)$ y $x_0 in [a, b]$. Para cada $x in [a, b]$ existe un número $beta(x)$ entre $x_0$ y $x$ tal que:

$ f(x) = P_n (x) + R_n (x) = sum_(k=0)^(n) (f^(k) (x_0))/(k!) (x - x_0)^k + (f^((n+1)) dot beta(x))/((n + 1)!) (x - x_0)^(n+1) $

donde $P_n$ es el $n$-ésimo polinomio de Taylor para $f$ en torno a $x_0$ y $R_n$ es el término del residuo (error de truncamiento) asociado a $P_n$.
