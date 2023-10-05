
object math {
	const pi = 3.14159265359
	
	/** El ángulo x está en grados */
	method cos(x) {
  		/** rad es el ángulo en radianes */
  		var rad = x * pi() / 180
  		/** Usa el polinomio de Maclaurin de grado 6 */
  		return 1 - rad * rad / 2 + rad * rad * rad * rad / 24 - rad * rad * rad * rad * rad * rad / 720
	}

	method sin(x) = self.cos(90 - x)

	method tan(x) = self.sin(x) / self.cos(x)
	
	method rad2degree(rad) = (rad * 180 / pi).truncate(0)
	
	method normalizeAngle(degree) = degree % 360
}

class Vec2 {
	var property x
	var property y
	method distanceWith(vec) {
		const differenceX = (x - vec.x())
		const differenceY  = (y - vec.y())
		return (differenceX*differenceX + differenceY*differenceY).squareRoot() 
	}
}
