class ABC {}
class Rutinas{
    var property intensidad
    method caloriasQuemadas(tiempo){
        return 100 * (tiempo- self.descanso(tiempo)) * self.intensidad()
    }
    method descanso(tiempo)

}
class Running inherits Rutinas{
    override method descanso(tiempo){
        return if (tiempo>20){
            5
        }else{
            2
        }
    }
}
class Maraton inherits Running{
    override method caloriasQuemadas(tiempo){
        return super(tiempo)*2
    }
}

class Remo inherits Rutinas(intensidad = 1.3){
    override method descanso(tiempo){
        return tiempo/5
    }
}

class RemoCompeticion inherits Remo(intensidad = 1.7){
    override method descanso(tiempo){
        return (super(tiempo)-3).max(2)
    }
}

