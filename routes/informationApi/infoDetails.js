const router = require('koa-router')();
const informationController=require('../../controllers/informationController')
router.prefix('/infoDetails')

// const informationDAO=require('../../model/informationDAO');

router.get('/:zId',async (ctx,next)=>{
    // try{
    //     let jsondata = await informationDAO.getInfoDetails(ctx.params.zId);
    //     ctx.set('content-type','application/json')
    //    ctx.body={"code": 200, "message": "ok", data:jsondata};
    // }catch(err){
    //    ctx.body ={"code": 500, "message": err.toString(), data:[]};
    // }
    await informationController.getInfoDetails(ctx,next)
})

module.exports=router;