const DAO=require('../model/DAO');

class DB{
    //获取全部数据
    getStrategy(){
        return DAO('SELECT sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy ' +
            'group by sType order by sTime DESC,smCheck desc',[]);
    }

    //获取详情内容
    getStrDetails(id){
        return DAO('select sTitle,smIntro from strategy where sId=?',[id]);
    }
}

module.exports=new DB();