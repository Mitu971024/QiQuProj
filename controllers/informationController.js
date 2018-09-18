const informationDAO=require('../model/informationDAO');

module.exports ={
    gethotInfo:async (ctx,next) =>{
        try{
            let jsondata = await informationDAO.gethotInfo();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
},
    gettodayInfo:async (ctx,next) =>{
        try{
            let jsondata = await informationDAO.gettodayInfo();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getnewsInfo:async (ctx,next) =>{
        try{
            let jsondata = await informationDAO.getnewsInfo();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getotherInfo:async (ctx,next) =>{
        try{
            let jsondata = await informationDAO.getotherInfo();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    getInfoDetails:async (ctx,next)=>{
        try{
           let jsondata = await informationDAO.getInfoDetails(ctx.params.zId);
           ctx.set('content-type','application/json')
           ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
           ctx.body ={"code": 500, "message": err.toString(), data:[]};
}}
}