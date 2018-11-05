const shareDAO = require('../model/shareDAO');
const formidable = require('formidable')
const fs = require('fs')
const moment = require('moment')
const path = require('path')

module.exports = {
    getAllInfo: async (ctx, next) => {                          //获取所有文段信息
        ctx.set("content-type", "application/json");
        let jsonData = await shareDAO.getAllInfo();
        ctx.body = {code: 200, message: 'ok', data: jsonData}
    },
    getDetails: async (ctx, next) => {                          //获取所有文段信息详情
        ctx.set("content-type", "application/json");
        let current_id = ctx.query.t_id;
        let jsonData = await shareDAO.getDetails(current_id);
        ctx.body = {code: 200, message: 'ok', data: jsonData}
    },
    getComment: async (ctx, next) => {                          //根据文章id获取评论
        ctx.set("content-type", "application/json");
        let t_id = ctx.query.id;
        let replyData= [];
        let commentData = await shareDAO.getComment(t_id);
        for (let i = 0; i < commentData.length; i++) {
            let data = await shareDAO.getReply(commentData[i].com_id);
            replyData.push(data);
            ctx.body={code: 200,messages: "ok",comments:commentData,replydata:replyData}
        }
    },
    goSend: async (ctx,next)=>{                                 //发评论
        ctx.set("content-type", "application/json");
        let content = ctx.request.body.c_msg;
        console.log(content);
        await shareDAO.goSend(content);
        ctx.body={code:200,messages:'ok',data:1}
    },
    goReply: async (ctx,next)=>{                                //回复
        ctx.set("content-type", "application/json");
        let content = ctx.request.body.r_msg;
        console.log(content);
        await  shareDAO.goReply(content);
        ctx.body={code:200,mesages:'ok',data:'1'}
    },
    getCard: async (ctx,next)=>{                    //获取所有帖子
        ctx.set("content-type", "application/json");
        let content = await shareDAO.getCard();
        ctx.body={code:200,mesages:'ok',data:content};
    },
    sendCard: async (ctx,next)=> {                    //发帖
        var form = new formidable.IncomingForm();
        form.uploadDir = "../public/uploadfiles";//设置存储路径
        form.multiples = true;       //设置允许多文件上传;
        form.parse(ctx.req, async function (err, fields, files) {
            let allImgs = '';
            for (var i = 0; i <= files.filename.length; i++) {
                var img_name = files.filename[i].name //获取每个图片的名字;
                var src = path.join(__dirname, files.filename[i].path);//获取源文件路径
                var fileDes = path.basename(img_name, path.extname(img_name)) + path.extname(img_name);//源文件名_后缀
                allImgs += fileDes + ',';               //图片名拼接一个字符串并以','隔开
                fs.renameSync(src, path.join(path.parse(src).dir, fileDes)); //更改名字
            }
            let finally_imgs = allImgs.substring(0, allImgs.length - 1); //删除最后一个','
            //收集数据
            let txt1 = fields.contentData;
            let u_name = fields.u_name;
            let pic = fields.u_pic;
            let imgs = finally_imgs;
            let now = fields.current_time;
            let allMsg = {
                txt: txt1 ,                 // 1.文字内容
                user_name: u_name,          // 2.用户名字
                user_pic: pic,              // 3.用户头像
                card_images:imgs,           // 4.提交的图片
                n_time: now,                // 5.时间
            };
            console.log(allMsg);
            await shareDAO.sendCard(allMsg);
            ctx.body = {code: 200, mesages: 'ok', data:1};
            if (err) {
                ctx.body = '上传失败';
            }
        })
        ctx.body = '上传成功';
    },
}