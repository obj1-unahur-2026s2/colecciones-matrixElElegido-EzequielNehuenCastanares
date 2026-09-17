object neo{
    var energia = 100

    method vitalidad(){
      return  energia * 0.1
    }

    method saltar(){
        energia = energia / 2
    }

    method esElElegido() = true
}

object morfeo{
    var vitalidad = 8

    var cansado = false

    method vitalidad() = vitalidad

    method saltar(){
        cansado = !cansado
        vitalidad -= 1
    }

    method esElElegido() = false
}

object trinity{
    method vitalidad() = 0

    method saltar(){}

    method esElElegido() = false
}

object nave{
    const pasajeros = []

    method subirPasajero(unPasajero) = pasajeros.add(unPasajero)

    method cantidadDePasajeros() = pasajeros.size()

    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})

    method vitalidadEstaEquilibrada() = pasajeros.any({p => p.vitalidad() > p.vitalidad()*2})

    method elegidoEstaEnLaNave() = pasajeros.any({p => p.esElElegido()})

    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }  

    method acelerar(){
        pasajeros.forEach({ p => if(!p.esElElegido()){p.saltar()}})

    }
}