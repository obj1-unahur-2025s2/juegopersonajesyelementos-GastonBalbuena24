object castillo {
    var defensa = 150
    var altura = 20
    
    method recibirAtaque(potencia) {
        defensa = (defensa - potencia).limitBetween(0, 200)
    }
    
    method recibirTrabajo() {
        defensa = (defensa + 20).limitBetween(0, 200)
    }
    
    method valor() = defensa / 5
}

object aurora {
    var viva = true
    var altura = 1
    
    method recibirAtaque(potencia) {
        if(potencia >= 10) {
            viva = false
        }
    }
    
    method recibirTrabajo() {
        // nada que hacer
    }
    
    method valor() = 15
}

object tipa {
    var altura = 8
    
    method recibirAtaque(potencia) {
        // nada que hacer
    }
    
    method recibirTrabajo() {
        altura = altura + 1
    }
    
    method valor() = altura * 2
}
