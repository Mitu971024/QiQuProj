//关于自行车的相关数据操作
const DAO = require('../model/DAO')

class bike{


    getAllbikes(){
        return DAO('select * from bikedetails ');
    }

    //获取自行车某一具体商品详细信息的方法
    getBikeDetails(bike11){
        return DAO('select * from bikedetails where cNo=?',[bike11.cNo])
    }

    //添加自行车的评价信息
    addBikeEvalute(bike3) {
        console.log(bike3)
        return DAO("insert into bikeevaluate(cNo,mId,eContent,etime)values(?,?,?,?)",
            [bike3.cNo,bike3.mId, bike3.eContent, bike3.etime])
    }
    //显示自行车评价信息
    showBikeEvaluate(bike4){
        return DAO("select bikedetails.cNo,bikeevaluate.eContent,bikeevaluate.eNo,bikeevaluate.etime,myinfo.mId,myinfo.mImg,myinfo.mName FROM bikeevaluate INNER JOIN myinfo on bikeevaluate.mId=myinfo.mId INNER JOIN bikedetails on bikedetails.cNo=bikeevaluate.cNo WHERE bikedetails.cNo=?",[bike4.cNo]);
    }
    addShop(bike5){
        return DAO("insert into shop(cNo,mId)values(?,?)",
            [bike5.cNo,bike5.mId ])
    }

    showShop(){
        return DAO('select distinct bikedetails.cNo,myinfo.mId,bikedetails.cIntr,bikedetails.cPrice,bikedetails.cBigimg FROM shop INNER JOIN myinfo on shop.mId=myinfo.mId INNER JOIN bikedetails on bikedetails.cNo=shop.cNo ',);
    }
    delete(del){
        return DAO('delete from shop where  mId=? and cNo=? ',[del.mId,del.cNo]);
    }

}
module.exports = new bike();