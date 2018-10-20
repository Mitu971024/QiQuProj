var DAO=require('../model/DAO');

class DB{
    AddInformation(info){
        return DAO('insert into information(zTitle,zImg,zContent,zTime,zFrom,zType,zCheck,sTime,zdContent,zdImg) values(?,?,?,?,?,?,?,?,?,?)',
            [info.zTitle,info.zImg,info.zContent,info.zTime,info.zFrom,info.zType,info.zCheck,info.sTime,info.zdContent,info.zdImg])
    }
    UpdateInfoType(){
        return DAO('update information set ztype=\'今日资讯\' where zTime=CURDATE()')
    }
    AddStrategy(strategy){
        return DAO('insert into strategy(sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck,smIntro,smImg) values(?,?,?,?,?,?,?,?,?)',
            [strategy.sTitle,strategy.sImg,strategy.sIntro,strategy.sTime,strategy.sFrom,strategy.sType,strategy.smCheck,strategy.smIntro,strategy.smImg])
    }
}

module.exports=new DB();