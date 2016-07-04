//: Semana 4 - Tarea de Velocidades

import UIKit

enum Velocidades : Int {
    case Apagado = 0, Velocidad_Baja = 20, Velocidad_Media = 50, Velocidad_Alta = 120, Velocidad_NO_Válida
    
    init() {
        self = .Apagado
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init(velocidad_inicial : Velocidades){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad(aceleracion : Int) -> ( actual : Int, velocidadEnCadena: String) {
        let actual : Int = aceleracion
        var velocidadEnCadena: String = ""
        
        if (aceleracion == 0) {
            self.velocidad = Velocidades.Apagado
            velocidadEnCadena = "Apagadado"
        } else if (aceleracion >= 1 ) && (aceleracion <  21){
            self.velocidad = Velocidades.Velocidad_Baja
            velocidadEnCadena = "Velocidad Baja"
        } else if (aceleracion >= 21) && (aceleracion <  51){
            self.velocidad = Velocidades.Velocidad_Media
            velocidadEnCadena = "Velocidad Media"
        } else if (aceleracion >= 51) && (aceleracion < 121){
            self.velocidad = Velocidades.Velocidad_Alta
            velocidadEnCadena = "Velocidad Alta"
        } else if (aceleracion >= 121){
            self.velocidad = Velocidades.Velocidad_NO_Válida
            velocidadEnCadena = "No Válido"
        }
        return ( actual, velocidadEnCadena)
    }
}

var auto = Auto(velocidad_inicial : Velocidades.Apagado)
var testVelocidades = [0, 20, 50, 120, 50, 20]
var test = 0

for var valor : Int in 0 ..< 20 {
    print(auto.cambioDeVelocidad(testVelocidades[test]))
    test += 1
    if (test > 5) {
        test = 0
    }
}
