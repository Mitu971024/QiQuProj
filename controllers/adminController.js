const adminDAO=require('../model/adminDAO');

module.exports={
    AddInformation:async (ctx,next)=>{
        let info={};
        info.zTitle=ctx.request.body.zTitle;
        info.zImg=ctx.request.body.zImg;
        info.zContent=ctx.request.body.zContent;
        info.zTime=ctx.request.body.zTime;
        info.zFrom=ctx.request.body.zFrom;
        info.zType=ctx.request.body.zType;
        info.zCheck=ctx.request.body.zCheck;
        info.sTime=ctx.request.body.sTime;
        info.zdContent=ctx.request.body.zdContent;
        info.zdImg=ctx.request.body.zdImg;
        try{
            await adminDAO.AddInformation(info);
            ctx.body={"code":200,"message":"ok",data:[]}
        }catch (err) {
            ctx.body= {"code":500,"message":err.toString(),data:[]}
        }
    },
    UpdateInfoType:async(ctx,next)=>{
        try{
            let jsondata = await adminDAO.UpdateInfoType();
            ctx.set('content-type','application/json')
            ctx.body={"code": 200, "message": "ok", data:jsondata};
        }catch(err){
            ctx.body ={"code": 500, "message": err.toString(), data:[]};
        }
    },
    AddStrategy:async (ctx,next)=>{
        let strategy={};
        strategy.sTitle=ctx.request.body.sTitle;
        strategy.sImg=ctx.request.body.sImg;
        strategy.sIntro=ctx.request.body.sIntro;
        strategy.sTime=ctx.request.body.sTime;
        strategy.sFrom=ctx.request.body.sFrom;
        strategy.sType=ctx.request.body.sType;
        strategy.smCheck=ctx.request.body.smCheck;
        strategy.smIntro=ctx.request.body.smIntro;
        strategy.smImg=ctx.request.body.smImg;
        try{
            await adminDAO.AddStrategy(strategy);
            ctx.body={"code":200,"message":"ok",data:[]}
        }catch (err) {
            ctx.body= {"code":500,"message":err.toString(),data:[]}
        }
    }
}