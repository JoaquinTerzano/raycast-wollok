import wollok.game.*

object abc {
	
	method init() {
		game.width(100)
  		game.height(60)
  		game.cellSize(8)
  		game.title("Juego")
		game.start()
		(99..1).forEach({elem => 
			self.build(elem)
		}) 
	}
	
	method build(elem){
			const wall = new Wall(position=game.at(elem, 0), image="assets/wall-" + 59.toString() + ".jpg")
			game.addVisual(wall)
	} 
}

class Wall {
	var property position
	var property image
}
