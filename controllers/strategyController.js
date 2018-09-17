const strategyDAO=require('../model/strategyDAO');

module.exports ={
    getStrategy:async (ctx,next) =>{
        try{
            let jsondata = await strategyDAO.getStrategy(ctx.params.sType);
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch (err) {
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getStrDetails:async (ctx,next)=>{
        try{
            let jsondata = await strategyDAO.getStrDetails(ctx.params.sId);
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch (err) {
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    }
}