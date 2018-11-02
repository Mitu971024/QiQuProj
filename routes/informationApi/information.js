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

router.get('/game', async (ctx, next) => {
    await informationController.getgameInfo(ctx,next)
})

router.get('/recommend', async (ctx, next) => {
    await informationController.getrecommendInfo(ctx,next)
})

module.exports=router;