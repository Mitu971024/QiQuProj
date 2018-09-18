const router = require('koa-router')()

router.prefix('/')
router.get('/', async (ctx, next) => {
    ctx.body = '我是管理员页面'
})

module.exports = router