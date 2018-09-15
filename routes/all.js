const router = require('koa-router')()

router.get('/', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/index', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/users', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/order', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/shoppingcart', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/settings', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/space', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/share', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/bike', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/information', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})
router.get('/strategy', async (ctx, next) => {
    await ctx.render('index', {
        title: 'Hello Koa 2!'
    })
})

module.exports = router