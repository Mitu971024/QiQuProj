const router = require('koa-router')();
router.prefix('/infoDetails')

const informationDAO=require('../../model/informationDAO');

router.get('/:zId',async (ctx,next)=>{
    try{
        let jsondata = await informationDAO.getInfoDetails(ctx.params.zId);
        ctx.set('content-type','application/json')
       ctx.body={"code": 200, "message": "ok", data:jsondata};
    }catch(err){
       ctx.body ={"code": 500, "message": err.toString(), data:[]};
    }

})

module.exports=router;