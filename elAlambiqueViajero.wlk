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
      unVehiculo.suficienteCombustible()
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
  method suficienteCombustible(){
    combustible >= 50
  }
  method desgaste(){
    combustible -= 50
  } 
}

