class Farolito {
	
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true 
}

class Canasto {
	
	var property volumen 
	const property esLuminoso = false
	
	method peso() = volumen / 10 
	method carga()= volumen * 2 
	
}

class MorralBici {
	
	var property largo
	var property tieneOjoDeGato   
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = self.tieneOjoDeGato()
	
}


/*
 Para poder agregar un nuevo tipo de accesorio es necesario que entienda los mismos mensajes, en este caso peso(), carga() 
 y esLuminoso(). De esta manera se conserva el polimorfismo, es decir, que otro objeto puede interactual con los accesorios de 
 igual manera sin importar cual de estos sea.
  
 */