var DAO=require('../model/DAO');

class DB{
    //获取全部数据
    getInformation(type){
        return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck FROM `information` ' +
            'where zType=? order by zTime desc,zCheck desc',[type]);
    }

    //获取详情内容
    getInfoDetails(id){
        return DAO('select zTitle,zdContent from information where zId=?',[id]);
    }
}

module.exports=new DB();