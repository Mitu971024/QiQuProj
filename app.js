const Koa = require('koa')
const app = new Koa()
const views = require('koa-views')
const json = require('koa-json')
const onerror = require('koa-onerror')
const bodyparser = require('koa-bodyparser')
const logger = require('koa-logger')

const index = require('./routes/indexApi/index')
const users = require('./routes/indexApi/users')
const strateRouter=require('./routes/strategyApi/strategy')
const strDetailsRouter=require('./routes/strategyApi/strateDetails')
const infoRouter=require('./routes/informationApi/information')
const infoDetailsRouter=require('./routes/informationApi/infoDetails')
// error handler
onerror(app)

// middlewares
app.use(bodyparser({
    enableTypes:['json', 'form', 'text']
}))
app.use(json())
app.use(logger())
app.use(require('koa-static')(__dirname + '/public'))

app.use(views(__dirname + '/views', {
    map:{html:'ejs'}
}))

// logger
app.use(async (ctx, next) => {
    const start = new Date()
    await next()
    const ms = new Date() - start
    console.log(`${ctx.method} ${ctx.url} - ${ms}ms`)
})

// routes
app.use(index.routes(), index.allowedMethods())
app.use(users.routes(), users.allowedMethods())
app.use(strateRouter.routes(),strateRouter.allowedMethods())
app.use(strDetailsRouter.routes(),strDetailsRouter.allowedMethods())
app.use(infoRouter.routes(),infoDetailsRouter.allowedMethods())
app.use(infoDetailsRouter.routes(),infoDetailsRouter.allowedMethods())

// error-handling
app.on('error', (err, ctx) => {
    console.error('server error', err, ctx)
});

module.exports = app