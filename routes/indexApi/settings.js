const router = require('koa-router')()

router.prefix('/')
router.get('/', async (ctx, next) => {
    ctx.body = '个人设置'
})

module.exports = router