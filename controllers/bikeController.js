const bikeDAO = require('../model/bikeDAO')
const moment = require('moment')

module.exports = {


    addBikeEvalute:async (ctx, next) => {
        const time=moment(ctx.request.etime).format(`YYYY-MM-DD`)
        let bike3 = {};
        let query=ctx.request.body;
        bike3.cNo=query.cNo
        bike3.mId = query.mId
        bike3.eContent = query.eContent
        bike3.etime = time
        try {
            let data=await bikeDAO.addBikeEvalute(bike3)
            ctx.body = {"code": 200, "message": "ok", data: data}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    },
    addShop:async (ctx, next) => {
        let bike5 = {};
        let query=ctx.request.body;
        bike5.cNo=query.cNo
        bike5.mId = query.mId
        bike5.sName = query.sName
        bike5.sPrice = query.sPrice
        bike5.sImg = query.sImg
        bike5.sNumber = query.sNumber
        try {
            let data=await bikeDAO.addShop(bike5)
            ctx.body = {"code": 200, "message": "ok", data: data}
        } catch (err) {
            ctx.body = {"code": 500, "message": err.toString(), data: []}
        }
    }
}