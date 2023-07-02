e = exp(1)

PDT <- function(q, p, R, t){
  value = ((e^((-(q+p)*(t-1))))-(e^((-(q+p)*(t)))))
  return(value)
}
#This is a function that calculates the probability that a species with duration
#T is preserved at least once
RTerm <- function(q, p, R, t){
  BigR = ((1-((1-R))^(t)))
  return(BigR)
  
}

############################################

#This is the Pp sum that Foote describes:
# "predict[s] the proportion of species preverved" (Foote 149)

############################################
species_preserved <- function(q, p, R, t){
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
##########################################

PoN <- function(q, p){
  PON = p/(p+q)
  return(PON)
}

nPP <- function(q, p, R,t, N){
  PP = Pp(q, p, R, t)
  
  value = (1-(1-(PP))^(N))
  return(value)         
}

NerSum <- function(q, p, R, t, N){
  
  sum = 0
  f <- function(n){
    O <- PoN(q, p)*(1-((1-((Pp(q,p,R,t))^(n)))))
  }
  repeat{
    term = f(N)
    if (term < 1e-100) break # stopping condition
    sum = sum + term
    N = N + 1
  }
  
  return(sum)
}


#######################################

# This is the Pa function the Foote explains:
# [predicts] the proportion of these that have at least one direct decedent preserved

#######################################

decendents_presevered <- function(q, p, R, t, N){
  sum = 0
  f<-function(tT){
    O <- ((PDT(q, p, R, tT)) * ((RTerm(q, p, R, tT))/(Pp(q,p,R,tT))))*(NerSum(q, p, R, tT, N))
  }
  
  repeat{
    term = f(t)
    if (term < 1e-100) break # stopping condition
    sum = sum + term
    t = t + 1
  }
  
  
  return(sum)
}
##############################################
