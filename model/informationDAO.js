var DAO=require('../model/DAO');

class DB{
    //获取数据
    getInformation(){
        return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck FROM `information` ' +
            'group by zType order by zTime desc,zCheck desc',[]);
    }


    getInfoDetails(id){
        return DAO('select zTitle,zdContent from information where zId=?',[id]);
    }
}

module.exports=new DB();