class Enfermedad {
	
	var cantidadCelulasAmenazadas
	
	method cantidadCelulasAmenazadas() {
		return cantidadCelulasAmenazadas
	}
	
	method atenuar(unasCelulas) {
		cantidadCelulasAmenazadas = (cantidadCelulasAmenazadas - unasCelulas).max(0)
	}
	
	method fueCurada() {
		return cantidadCelulasAmenazadas == 0
	}
	
	method afectarA(unaPersona)
	
	method esAgresiva(unaPersona)
	
}
