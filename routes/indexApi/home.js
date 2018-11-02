const router = require('koa-router')()
const homeDAO = require('../../model/homeDAO')
const homeController = require('../../controllers/homeController')

router.prefix('/')
router.get('/getInfo', async (ctx, next) => {
    let jsondata = await homeDAO.getInfor();
    ctx.body = {"code":200,"message":"ok",data:jsondata};
})
router.get('/getStr', async (ctx, next) => {
    let jsondata = await homeDAO.getStr();
    ctx.body = {"code":200,"message":"ok",data:jsondata};
})

module.exports = router
