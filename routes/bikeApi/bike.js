const router=require('koa-router')();
const bikeController=require('../../controllers/bikeController');
const bikeDAO=require('../../model/bikeDAO')

router.prefix('/')

router.post('/',async(ctx,next)=>{
    await bikeController.getBike(ctx,next);
})

router.post('/allbike',async(ctx,next)=>{
    try {
        let data = await bikeDAO.getAllbikes();
        ctx.body = {"code": 200, "message": "ok", data: data}
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})

router.post('/details',async(ctx,next)=>{
    let bike11 = {};
    let query=ctx.request.body;
    bike11.cNo = query.cNo
    try {
        let data=await bikeDAO.getBikeDetails(bike11);
        ctx.body = {"code": 200, "message": "ok", data:data}
        console.log(data)
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})



router.post('/details/addevalute',async(ctx,next)=>{
    await bikeController.addBikeEvalute(ctx,next);
})

router.post('/details/showevaluate',async(ctx,next)=>{
    let bike4 = {};
    let query=ctx.request.body;
    bike4.cNo=query.cNo
    try {
        let data = await bikeDAO.showBikeEvaluate(bike4);
        console.log(data);
        ctx.body = {"code": 200, "message": "ok", data: data}

    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})

router.post('/details/addshop',async(ctx,next)=>{
    await bikeController.addShop(ctx,next);
})

router.post('/details/showshop',async(ctx,next)=>{

    try {
        let data = await bikeDAO.showShop();
        ctx.body = {"code": 200, "message": "ok", data: data}
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})

router.post('/delete',async(ctx,next)=>{
    let del = {};
    let query=ctx.request.body;
    del.mId=query.mId
    del.cNo=query.cNo
    try {
        let data = await bikeDAO.delete(del);
        ctx.body = {"code": 200, "message": "ok", data: data}
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})
module.exports=router