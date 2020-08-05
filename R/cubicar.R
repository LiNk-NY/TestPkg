#' Llevar un numero a la tercera potencia
#'
#' @param n numeric(1) El numero
#'
#' @return Un numero cubicado
#' 
#' @export
#'
#' @examples
#' 
#' cubicar(2)
#' 
cubicar <- function(n) {
  if (is.na(n))
    stop("Numero 'n' es NA")
  n^3
}

#' Contar el numero de linas en una carpeta
#' 
#' @param testFolder La carpeta de pruebas de unidad
#' 
#' @export
#'
#' @return Un numero correspondiendo a el conteo de lineas dentro la carpeta
#' @examples
#' 
#' ## NOTA (OJO) En paquetes no usamos rutas fuera del paquete.
#' ## Esto es solo un ejemplo
#' 
#' testFolder <- "~/GenomicRanges/inst/unitTests"
#' testLines(testFolder)
#' 
testLines <- function(testFolder) {
    stopifnot(
        is.character(testFolder), length(testFolder) == 1L, !is.na(testFolder)
    )
  
    testfiles <- list.files(testFolder, full.names = TRUE)
    lineas <- vapply(testfiles, function(x) length(readLines(x)), numeric(1L))
    sum(lineas)
}
