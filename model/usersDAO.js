//关于用户对象的相关数据操作
const DAO = require('../model/DAO');

class DB{
    addUser(user){
        return DAO('insert into myInfo(mLogin,mPassword) values(?,?)',
            [user.mLogin,user.mPassword])
    }
    findUser(user){
        return DAO('select mLogin from myInfo where mLogin = ?',
            [user.mLogin])
    }
    login(){
        return DAO('select * from myInfo', [])
    }
    FindUser(){
        return DAO('select * from myInfo', [])
    }
}
module.exports = new DB();