//关于订单对象的相关数据操作
const DAO = require('../model/DAO')

class order {
    //获取我的订单

    //添加订单到购物车的方法

    //删除商品的方法

    //确认订单

    addExp(order4) {
        return DAO("insert into `order`(oNo,mId,sAddress,sphoneNumber,sTotal,sName)values(?,?,?,?,?,?)",
            [order4.oNo, order4.mId, order4.sAddress, order4.sphoneNumber, order4.sTotal, order4.sName])
    }

    showExp() {
        return DAO("select `order`.sName,`order`.sAddress,`order`.sphoneNumber FROM `order` order by create_time desc")
    }
    addOrder(order5) {
        return DAO("insert into `orderdetails`(cNo,mId,oNum,oName,oPrice,oImg)values(?,?,?,?,?,?)",
            [order5.cNo, order5.mId, order5.oNum, order5.oName, order5.oPrice, order5.oImg])
    }

    showOrder(){
        return DAO("select DISTINCT bikedetails.cNo,orderdetails.pNo,orderdetails.oName,orderdetails.oPrice,orderdetails.oImg,orderdetails.oNum FROM orderdetails INNER JOIN myinfo on orderdetails.mId=myinfo.mId INNER JOIN bikedetails on bikedetails.cNo=orderdetails.cNo ")
    }
    deleteOrder(del){
        return DAO('delete from `orderdetails` where  mId=? and cNo=? ',[del.mId,del.cNo]);
    }
}
module.exports = new order();