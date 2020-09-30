import Enfermedad.*

class EnfermedadAutoinmune inherits Enfermedad {
	var vecesQueAfecto = 0
	
	override method afectarA(unaPersona) {
		unaPersona.disminuirCelulas(cantidadCelulasAmenazadas)
		vecesQueAfecto++
	}
	
	override method esAgresiva(unaPersona) {
		return vecesQueAfecto > 30
	}
}
