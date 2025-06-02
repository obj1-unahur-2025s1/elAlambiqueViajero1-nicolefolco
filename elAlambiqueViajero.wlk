object luke {
    var vehiculoActual = alambiqueVeloz
    var property cantidadDeViajes = 0
    var property recuerdoActual = null
    
    method viajar(unLugar){
      if(unLugar.puedeLlegar(vehiculoActual)){
        cantidadDeViajes += 1
        recuerdoActual = unLugar.recuerdo()
        vehiculoActual.desgaste()
      }
    }
    

}

object paris {
    const property recuerdo = " llavero de la torre Eiffel"

    method puedeLlegar(unVehiculo){
      unVehiculo.puedeFuncionar()
    }

}

object buenosAires {
     const property recuerdo = "mate"

     method puedeLlegar(unVehiculo){
        unVehiculo.esRapido()
     }
}

object bagdad {
  var property recuerdo = "bidon"

  method cambiarRecuerdo(unRecuerdo) {
    recuerdo = unRecuerdo
  }
  method puedeLlegar(unVehiculo) = true

}

object lasVegas {
    const homenaje = paris

    method homenaje(unLugar) = unLugar
    method recuerdo() = homenaje.recuerdo()
    method puedeLlegar(unVehiculo){
        homenaje.puedeLlegar(unVehiculo)
    }

}


object alambiqueVeloz {
  var combustible = 100

  
  method esRapido() = true
  method puedeFuncionar(){
    combustible >= 50
  }
  method desgaste(){
    combustible -= 50
  } 
}

object superChatarraEspacial{
    var combustible = 25
    var municion = 5

    method esRapido() = false

    method recargarMisiles(cantidad){
        municion += cantidad
    }
     
    method puedeFuncionar(){
        combustible >= 25
    }

    method recargarCombustible(cantidad){
        combustible += cantidad
    }

    method disparar(cantidad){
        municion -= cantidad
        combustible -= 2 * cantidad
    }

    method desgaste(){
        combustible -= 25
    }
}

object antiguallaBlindada {
    var combustible = 50
    var cantidadGangster = 0
    
    method aumentarCantidadG(cantidad){
        cantidadGangster += cantidad
    }
    method esRapido() = true 
    method puedeFuncionar(){
        combustible >= 50
    }
    method desgaste(){
        combustible -= 50
        cantidadGangster -= 3
    }

}

object superConvertible {
 

}
