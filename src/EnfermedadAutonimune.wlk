class EnfermedadAutoinmune {
	var cantidadCelulasAmenazadas
	var vecesQueAfecto = 0
	
	method cantidadCelulasAmenazadas() {
		return cantidadCelulasAmenazadas
	}
	
	method afectarA(unaPersona) {
		unaPersona.destruirCelulas(cantidadCelulasAmenazadas)
		vecesQueAfecto++
	}
	
	method esAgresiva(unaPersona) {
		return vecesQueAfecto > 30
	}
	
	method atenuar(unasCelulas) {
		cantidadCelulasAmenazadas = (cantidadCelulasAmenazadas - unasCelulas).max(0)
	}
	
	method fueCurada() {
		return cantidadCelulasAmenazadas == 0
	}
}
