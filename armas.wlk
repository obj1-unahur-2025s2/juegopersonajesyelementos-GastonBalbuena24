object ballesta {
    var flechas = 10
    
    method cargada() = flechas > 0
    method potencia() = 4
    
    method usar() {
        flechas = (flechas - 1).limitBetween(0, 10)
    }
}

object jabalina {
    var disponible = true
    
    method cargada() = disponible
    method potencia() = 30
    
    method usar() {
        disponible = false
    }
}
