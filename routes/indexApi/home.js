const router = require('koa-router')()

router.prefix('/')
router.get('/', async (ctx, next) => {
  ctx.body = '我是首页'
})

module.exports = router
