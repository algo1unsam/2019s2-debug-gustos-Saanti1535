/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }
object naranja { method esFuerte() { return true } }

/* materiales */
object cobre {
	method brilla(){ return true }
	method conduce() { return true }
}

object vidrio { 
	method brilla() { return true }
	method conduce() { return false }
}

object lino { 
	method brilla() { return false }
	method conduce() { return false }
}

object madera {
	method brilla() { return false }
	method conduce() { return false }
}

object cuero {
	method brilla() { return false }
	method conduce() { return false }
}

object plomo {
	var _estado
	method setEstado(estado) { _estado = estado}
	method brilla() { return _estado.esBrillante() }
	method conduce() { return _estado.esConductor() }

}

object natural {
	method esBrillante() { return true }
	method esConductor() { return false }
}

object cromado {
	method esBrillante() { return true }
	method esConductor() { return true }
}

object oxidado {
	method esBrillante() { return false }
	method esConductor() { return false } 
}

/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object arito {
	method color() { return celeste }
	method material() { return cobre }
	method peso() { return 180 }
}

object banquito {
	var _color = naranja
	method material() { return madera }
	method peso() { return 1700 }
	method color() { return _color }
	method setColor(color) { _color = color }
}

object cajita {
	var _objeto = pelota
	var _material = cobre
	method color(){ return rojo }
	method peso() { return 400 + _objeto.peso() }
	method setObjeto(objeto) { _objeto = objeto }
	method verObjeto() { return _objeto }
	method material() { return _material}
	method setMaterial(material) { _material = material}
}
