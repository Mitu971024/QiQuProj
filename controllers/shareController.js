const shareDAO = require('../model/shareDAO');

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
    }
}