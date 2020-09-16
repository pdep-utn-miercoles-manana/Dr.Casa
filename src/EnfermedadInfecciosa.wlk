class EnfermedadInfecciosa {
	
	var cantidadCelulasAmenazadas
	
	method reproducite() {
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas * 2
	}
	
	method cantidadCelulasAmenazadas() {
		return cantidadCelulasAmenazadas
	}
	
	method afectarA(unaPersona) {
		unaPersona.subirTemperatura(cantidadCelulasAmenazadas / 1000)
	}
	
	method esAgresiva(unaPersona) {
		return unaPersona.cantidadDeCelulas() * 0.1 < cantidadCelulasAmenazadas
	}
	
}

