class ABC {}
class Rutinas{
    method caloriasQuemadas(tiempo){
        return 100 * (tiempo- self.descanso(tiempo)) * self.intensidad()
    }
    method descanso(tiempo)
    method intensidad()
}
class Running inherits Rutinas{
    const intensidad
    override method descanso(tiempo){
        return if (tiempo>20){
            5
        }else{
            2
        }
    }
    override method intensidad(){
        return intensidad
    }
}
class Maraton inherits Running{
    override method caloriasQuemadas(tiempo){
        return super(tiempo)*2
    }
}

class Remo inherits Rutinas(){
    override method descanso(tiempo){
        return tiempo/5
    }
    override method intensidad(){
        return 1.3
    }
}

class RemoCompeticion inherits Remo(){
    override method descanso(tiempo){
        return (super(tiempo)-3).max(2)
    }
    override method intensidad(){
        return 1.7
    }
}

