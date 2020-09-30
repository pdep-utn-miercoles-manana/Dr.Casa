import Persona.*

object factorA {
	
	method puedeRecibir(otroFactor) {
		return otroFactor.equals(self) || otroFactor.equals(factorO)
	}
	
	method puedeDonar(otroFactor) {
		return otroFactor.equals(self) || otroFactor.equals(factorR)
	}
	
}

object factorR {
	
	method puedeRecibir(otroFactor) {
		return true 
	}
	
	method puedeDonar(otroFactor) {
		return otroFactor.equals(self)
	}
	
}

object factorO {
	
	method puedeRecibir(otroFactor) {
		return otroFactor.equals(factorA)
	}
	
	method puedeDonar(otroFactor) {
		return true
	}
	
}
