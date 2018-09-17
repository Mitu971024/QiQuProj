const router = require('koa-router')();
const strateController=require('../../controllers/strategyController')
router.prefix('/strateDetails')

// const strategyDAO=require('../../model/strategyDAO');

router.get('/:sId',async (ctx,next)=>{
    // try{
    //     let jsondata = await strategyDAO.getStrDetails(ctx.params.sId);
    //     ctx.set('content-type','application/json')
    //     ctx.body={"code": 200, "message": "ok", data:jsondata};
    // }catch (err) {
    //     ctx.body ={"code": 500, "message": err.toString(), data:[]};
    // }
    await strateController.getStrDetails(ctx,next)
})

module.exports=router;