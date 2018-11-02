const router = require('koa-router')()
const settingsDAO = require('../../model/settingsDAO')
const settingController = require('../../controllers/settingsController')
var formidable = require('formidable')
var fs = require('fs')
var moment = require('moment')
var path = require('path')

router.prefix('/')
router.get('/',async (ctx,next) =>{
    //显示个人信息
    // ctx.body = '我的信息'
    let jsondata = await settingsDAO.getUsers();
    // ctx.set('content-type','application/json')
    ctx.body = {"code":200,"message":"ok",data:jsondata};
})
router.post('/modify',async (ctx,next) =>{
    //修改个人信息
    await settingController.modUser(ctx,next)
});
router.post('/uploadfile', function (ctx, next) {
    var form = new formidable.IncomingForm();
    form.uploadDir = '../public/myPic';   //设置文件存放路径
    form.multiples = true;  //设置上传多文件
    var filename = "";
    var src = "";
    var fileDes = "";
    form.parse(ctx.req, async function (err, fields, files) {
        // console.log(files)
        //根据files.filename.name获取上传文件名，执行后续写入数据库的操作
        filename = files.filename.name;
        src = path.join(__dirname,'../',files.filename.path);
        fileDes = path.basename(filename, path.extname(filename)) + moment(new Date()).format("YYYYMMDDHHMMSS") + path.extname(filename);
        console.log("src : " + src)
        console.log("dir : " + path.join(path.parse(src).dir))
        console.log("fileDes" + fileDes)
        fs.renameSync(src,path.join(path.parse(src).dir,fileDes));
        let str = `/myPic/${fileDes}`;
        console.log("str : " + str);
        console.log("fields : " + fields);
        console.log("mId:   " + fields.mId);
        let user = {}
        user.mImg = str;
        user.mId = fields.mId;
        try {
            await settingsDAO.modImg(user);
            ctx.body={"code":200, "message":"ok",data:[]};
        } catch (e) {
            ctx.body={"code":500, "message":"err"+e.message, data:[]};
        }

        // //根据fileds.mydata获取上传表单元素的数据，执行写入数据库的操作
    })
})
// if(err){
//     ctx.body={'code':500,"message":"err"+err.message,data:[]};
// }
router.post('/modPwd',async (ctx,next) =>{
    await settingController.modPwd(ctx,next)
});
router.post('/modOther',async (ctx,next) =>{
    await settingController.modOther(ctx,next)
});
router.post('/one',async (ctx,next) =>{
    //显示个人信息
    await settingController.getOneUser(ctx,next)
})
module.exports = router