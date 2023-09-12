#' @title Function in Foote Functions
#'
#' This information comes from Mike Foote's paper: On the Probability of Ancestors in the Fossil Record.
#'
#' @description
#' There are several functions in this script that relate to species preservation probability calculations.
#' This documentation provides an overview of each function that are inside the two main functions: speciesPreserved, and descendentsPreserved
#'
#' @section Foote Functions:
#'
#' @rdname PDT
#' @export
#' @usage
#' PDT(q, p, R, t)
#'
#' @rdname RTerm
#' @export
#' @usage
#' RTerm(q, p, R, t)
#'
#' @rdname PoN
#' @export
#' @usage
#' PoN(q, p)
#'
#' @rdname nPP
#' @export
#' @usage
#' nPP(q, p, R, t, N)
#'
#' @rdname NerSum
#' @export
#' @usage
#' NerSum(q, p, R, t, N)
#'
#' @section Functions:
#'
#' @rdname PDT
#' @title PDT - Calculate species duration probability.
#'
#' @description
#' This function calculates the probability that the duration of a species is T time units.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#'
#' @return The calculated probability value.
#'
#' @examples
#' PDT(q = 0.1, p = 0.2, R = 0.8, t = 2)
#'
#' @rdname RTerm
#' @title RTerm - Compute BigR value.
#'
#' @description
#' This function computes the value of BigR, which represents the probability of preserving a species at least once.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#'
#' @return The value of BigR.
#'
#' @examples
#' RTerm(q = 0.1, p = 0.2, R = 0.8, t = 2)
#'
#' @rdname PoN
#' @title PoN - Calculate species proportion.
#'
#' @description
#' This function calculates the probability that a species with duration T has exactly N direct descendants.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#'
#' @return The calculated proportion value.
#'
#' @examples
#' PoN(q = 0.1, p = 0.2)
#'
#' @rdname nPP
#' @title nPP - Calculate probability of at least one direct descendant.
#'
#' @description
#' This function calculates the probability that at least one direct descendant is preserved.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#' @param N The number of direct descendants.
#'
#' @return The calculated probability value.
#'
#' @examples
#' nPP(q = 0.1, p = 0.2, R = 0.8, t = 2, N = 100)
#'
#' @rdname NerSum
#' @title NerSum - Calculate sum of inner sum in Pa formula.
#'
#' @description
#' This function calculates the sum of the inner sum within the Pa formula in Foote's paper.
#'
#' @param q The extinction rate of the species.
#' @param p The origination rate of the species.
#' @param R The probability of preserving a species at least once within the time it exists.
#' @param t The duration for which preservation probability is calculated.
#' @param N The number of direct descendants.
#'
#' @return The sum of the inner sum within the Pa formula.
#'
#' @examples
#' NerSum(q = 0.1, p = 0.2, R = 0.8, t = 2, N = 100)
