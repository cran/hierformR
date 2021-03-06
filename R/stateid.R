#' Find State ID
#'
#' @param x a vector of network characteristics generated by get_statespace function
#' @return the state id corresponding to the network characteristics
#' @importFrom utils "data"
#' @examples
#' g=igraph::graph.edgelist(cbind(a=c(1,2,3,3), b=c(4,1,1,2)),directed=TRUE)
#' gs=netchar(g)
#' stateid(gs)
#' @export

stateid <- function(x){

data("states", envir = environment())
xx <- get("states", envir  = environment())

q<-rowmatch(xx[1:12], x, nomatch = NA)
q1<-which(q==1)
return(q1)
}
