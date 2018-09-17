const informationDAO=require('../model/informationDAO');

module.exports ={
    getInformation:async (ctx,next) =>{
        try{
            let jsondata = await informationDAO.getInformation(ctx.params.zType);
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