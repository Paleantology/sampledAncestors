#' Calculating the proportion of species preserved.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#'
#' @return The proportion calculation.
#' @export
#' @examples
#' preservation_sum <- species_preserved(q = 0.1, p = 0.2, R = 0.8, t = 2)
#' print(preservation_sum)
species_preserved <- function(q, p, R, t) {
  sum = 0
  ff <- function(t){
    O <- (PDT(q, p, R,t)*RTerm(q,p,R,t))
    return(O)
  }
  
  repeat{
    term <- ff(t)
    if (term < 1e-100) break # stopping condition
    sum = sum + term
    t = t + 1
  }
  
  return(sum)
}

preservation_sum <- species_preserved(q = 0.1, p = 0.2, R = 0.8, t = 2)
print(preservation_sum)
