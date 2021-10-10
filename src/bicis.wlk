import accesorios.*
import deposito.*

class Bicicleta {
	
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() = rodado * 2.5 + 15 
	method velocidadDeCrucero() = if (largo > 120) { rodado + 6 } else { rodado + 2} 
	method carga() = accesorios.sum({acc => acc.carga()})
	method peso() = (rodado/2) + ( accesorios.sum( {acc => acc.peso()} ))
	method tieneLuz() = accesorios.any({ acc => acc.esLuminoso()})
	method cantidadAccLivinos() = accesorios.count( { acc => acc.peso() < 1 })
	
	method sonCompanieras(unaBici) {
        const sonDistintas = unaBici != self
        const deIgualMarca = unaBici.marca() == self.marca()
        const deLargoCorrecto = (unaBici.largo() - self.largo()).abs() < 10
        return sonDistintas and deIgualMarca and deLargoCorrecto
        }
        
    method tengoCompaniera(colleccion) = colleccion.any({ bici => bici.sonCompanieras(self) })
}
