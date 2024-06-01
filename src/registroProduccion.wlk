object registroProduccion {
	
	var produccion = []
	
	method produccionHoy(piezas){
		
		produccion.add(piezas)
	}
	
	method algunDiaSeProdujo(cantidad){
		
		return produccion.contains(cantidad)
	}
	
	method maximoValorDeProduccion(){
		return produccion.max()
	}
	
	method valoresDeProduccionPares(){
		
		return produccion.filter({x => x % 2 == 0})
	}
	
	method produccionEsAcotada(n1,n2){
		
		return produccion.all({reg => reg > n1 && reg < n2})
	}
	
	method produccionesSuperioresA(cuanto){
		
		return produccion.filter({x => x > cuanto})
	}
	
	method produccionesSumando(n){
		
		return produccion.map({x => x + n})
	}
	
	method totalProducido(){
		
		return produccion.sum()
	}
	
	method ultimoValorDeProduccion(){
		
		return produccion.last()
	}
	
	method cantidadProduccionesMayorALaPrimera(){
		
		return produccion.count({x => x > produccion.first()})
	}
	
}
