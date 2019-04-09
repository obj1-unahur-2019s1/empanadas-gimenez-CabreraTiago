object galvan {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.

	var property sueldo = 15000
	
	var cajaAhorro = 0

	method cobrarSueldo() {
		cajaAhorro += self.sueldo()
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

