const router = require('koa-router')();
const informationController=require('../../controllers/informationController')
router.prefix('/')

// const informationDAO=require('../../model/informationDAO');

router.get('/hot', async (ctx, next) => {
    await informationController.gethotInfo(ctx,next)
})

router.get('/today', async (ctx, next) => {
    await informationController.gettodayInfo(ctx,next)
})

router.get('/news', async (ctx, next) => {
    await informationController.getnewsInfo(ctx,next)
})

router.get('/other', async (ctx, next) => {
    await informationController.getotherInfo(ctx,next)
})


module.exports=router;