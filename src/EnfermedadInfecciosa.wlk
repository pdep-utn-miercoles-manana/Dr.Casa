import Enfermedad.*

class EnfermedadInfecciosa inherits Enfermedad {
	
	method reproducite() {
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas * 2
	}
	
	override method afectarA(unaPersona) {
		unaPersona.subirTemperatura(cantidadCelulasAmenazadas / 1000)
	}
	
	override method esAgresiva(unaPersona) {
		return unaPersona.cantidadDeCelulas() * 0.1 < cantidadCelulasAmenazadas
	}
	
}
