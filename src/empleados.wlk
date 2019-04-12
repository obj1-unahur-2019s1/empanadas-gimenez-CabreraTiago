object galvan {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.

	var property sueldo = 15000
	var deuda = 0
	var dinero = 0

	method cobrarSueldo() {
		// Tiene deuda, usa todo el sueldo
		// Tiene deuda, no le alcanza el sueldo
		if (deuda >= sueldo) {
			deuda -= sueldo
		} else {
			// Tiene deuda, le sobra el sueldo
			// No tiene deuda
			dinero += sueldo - deuda
			deuda = 0
		}
	}
	
	method gastar(cuanto) {
		if (dinero >= cuanto) {
			dinero -= cuanto
		} else {
			if (dinero > 0) {
				deuda += cuanto - dinero
				dinero = 0
			} else {
				deuda += cuanto
			}
		}
	}
	
	method totalDeuda() {
		return deuda
	}
	
	method totalDinero() {
		return dinero
	}
		
}

object baigorria {

	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalDineroCobrado = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method getTotalDineroCobrado() {
		return totalDineroCobrado
	}
	
	method cobrarSueldo() {
		totalDineroCobrado += self.sueldo()
	}

}

object gimenez {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

