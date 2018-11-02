const DAO = require('../model/DAO')

class HOME {
    getInfor(){
        return DAO('select * from information',[])
    }
    getStr(){
        return DAO('select * from strategy',[])
    }
}

module.exports = new HOME();