//关于用户对象的相关数据操作
const DAO = require('../model/DAO');

class SET{
    getUsers(){
        return DAO('call getUsers;',[]);
    }
    getOneUser(id){
        return DAO('select * from myInfo where mId =?',[id.mId]);
    }
    modUser(user){
        return DAO('update myInfo set mName = ?,mSex = ?,mCity = ?,mAge = ?,mHeight = ?,mWigth = ?,mGxqm = ? where mId = ?',
            [user.mName,user.mSex,user.mCity,user.mAge,user.mHeight,user.mWigth,user.mGxqm,user.mId])
    }
    modImg(user){
        return DAO('update myInfo set mImg = ? where mId = ?',[user.mImg,user.mId])
    }
    modPwd(user){
        return DAO('update myInfo set mPassword = ? where mId = ?', [user.mPassword,user.mId])
    }
    userPwd(user){
        return DAO('update myInfo set mPassword = ? where mLogin = ?', [user.mPassword,user.mLogin])
    }
    modOther(user){
        return DAO('update myInfo set mPlace = ? where mId = ?', [user.mPlace,user.mId])
    }
}
module.exports = new SET();