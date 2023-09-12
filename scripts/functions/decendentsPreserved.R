setwd("~/theFooteFunctions")
#' Calculates the proportion of species preserved that have at least one direct descendant preserved.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#' @param N The number of direct descendants.
#'
#' @return The proportion of species preserved that have at least one direct descendant preserved.
#' @export
#' @examples
#' descendants_sum <- decendents_preserved(q = 0.1, p = 0.2, R = 0.8, t = 2, N = 100)
#' print(descendants_sum)
decendents_preserved <- function(q, p, R, t, N){
  sum = 0
  f<-function(tT){
    O <- ((PDT(q, p, R, tT)) * ((RTerm(q, p, R, tT))/(species_preserved(q,p,R,tT))))*(NerSum(q, p, R, tT, N))
  }
  
  repeat{
    term = f(t)
    if (term < 1e-100) break # stopping condition
    sum = sum + term
    t = t + 1
  }
  
  
  return(sum)
}

descendants_sum <- decendents_preserved(q = 0.1, p = 0.2, R = 0.8, t = 2, N = 100)
print(descendants_sum)
