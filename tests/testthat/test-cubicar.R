test_that("ver que cubicar sirva", {
    expect_error(
        cubicar(NA)
    )

    expect_error(
        cubicar("10")
    )

    expect_identical(
        cubicar(2), 8
    )
})

test_that("ver que testLines sirva", {
    # NOTA. En paquetes no usamos rutas fuera del paquete. Esto es solo
    # un ejemplo
    testFolder <- "~/GenomicRanges/inst/unitTests"
    expect_true(
        is.numeric(testLines(testFolder))
    )
})
