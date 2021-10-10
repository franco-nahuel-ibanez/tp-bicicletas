import bicis.*
import accesorios.*

class Deposito {
	
	const property bicis = []
	
	method bicisRapidas() = bicis.filter( { bici => bici.velocidadDeCrucero() > 25 })
	method marcaBicis() = bicis.map({ bici => bici.marca() }).asSet()
	method esNocturno() = bicis.all({ bici => bici.tieneLuz() })
	method tieneParaLlevar(peso) = bicis.any({ bici => bici.carga() > peso })
	method marcaBiciMasRapida() = bicis.max({ bici => bici.velocidadDeCrucero()}).marca()
	
	method cargaTotalBicisLargas() {
		const biciMasLarga = bicis.filter({bici => bici.largo() > 170 })
		return biciMasLarga.sum({ bici => bici.carga()})
	} 
	
	method cantBicisSinAccesorios() = bicis.count({ bici => bici.accesorios().isEmpty() })
	
	method companieras(unaBici) = bicis.filter({ bici => bici.sonCompanieras(unaBici) }) 
	
	method hayCompanieras() = bicis.any({ bici => bici.tengoCompaniera( self.bicis() ) })
	
	
	
}