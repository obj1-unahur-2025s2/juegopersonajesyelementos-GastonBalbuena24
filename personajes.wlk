import armas.*
import elementos.*

object floki {
    var arma = jabalina

    method encontrar(elemento) {
        if(arma.cargada()){
            elemento.recibirAtaque(arma.potencia())
            arma.usar()
        }
    }

    method cambiarArma(unaArma) {
        arma = unaArma
    }

}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento
    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento
    }

    method estaFeliz() {
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }
    
}

object luisa {
    var personajeActivo = floki

    method asignarPersonaje(unPersonaje) {
        personajeActivo = unPersonaje
    }

    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }
}



