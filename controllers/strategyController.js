const strategyDAO=require('../model/strategyDAO');

module.exports ={
    getwayStrategy:async (ctx,next) =>{
        try{
            let jsondata = await strategyDAO.getwayStrategy();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch (err) {
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getclassStrategy:async (ctx,next) =>{
        try{
            let jsondata = await strategyDAO.getclassStrategy();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch (err) {
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getrecStrategy:async (ctx,next) =>{
        try{
            let jsondata = await strategyDAO.getrecStrategy();
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