const orderDAO = require('../model/orderDAO')
module.exports = {

    addExp:async (ctx, next) => {
        let order4 = {};
        let query=ctx.request.body;
        order4.oNo=query.oNo
        order4.mId = query.mId
        order4.sAddress = query.sAddress
        order4.sphoneNumber = query.sphoneNumber
        order4.sTotal = query.sTotal
        order4.sName = query.sName
        try {
            let data=await orderDAO.addExp(order4)
            ctx.body = {"code": 200, "message": "ok", data: data}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    },
    addOrder:async (ctx, next) => {
        let order5 = {};
        let query=ctx.request.body;
        order5.cNo=query.cNo
        order5.mId = query.mId
        order5.oNum = query.oNum
        order5.oName = query.oName
        order5.oPrice = query.oPrice
        order5.oImg = query.oImg
        try {
            let data=await orderDAO.addOrder(order5)
            ctx.body = {"code": 200, "message": "ok", data: data}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    }

}