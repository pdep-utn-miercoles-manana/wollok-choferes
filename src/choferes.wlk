object pepe {
  const cantidadCafeTomado = 1
  
  method estaConfiado() {
	return self.atencion() > 3	
  }
  
  method atencion() {
	return cantidadCafeTomado * 2	
  }
}

object otto {
  const cantidadCafeTomado = 4
  
  method estaConfiado() {
	return self.atencion() > 3	
  }
  
  method atencion() {
	return cantidadCafeTomado * 2	
  }
}

object bondiRojo {
  var chofer = pepe
  
  method tiempoViaje(unosKilometros) {
	return unosKilometros / self.velocidad()
  }
  
  method velocidad() {
  	return if (chofer.estaConfiado()) 80 else 50
  }
}

object bondiVerde {
  var chofer = otto
  var anioReparacion = 2015
  
  method tiempoViaje(unosKilometros) {
	return unosKilometros / self.velocidad()
  }
  
  method velocidad() {
  	return self.tiempoDesdeUltimaReparacion() * chofer.atencion()
  }
  
  method tiempoDesdeUltimaReparacion() {
  	return hoy.year() - anioReparacion
  }
}

















































































object hoy {
	method year() {
		return new Date().year()
	}
}