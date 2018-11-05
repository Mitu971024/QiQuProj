const DAO = require('../model/DAO');

class Database {
    constructor(){

    }
    getAllInfo(){           //获取文章标题id图片
        return DAO('select security_id,security_img,security_title from security');
    };
    getDetails(d_id){       //获取文章详情
        return DAO('select security_title, security_img,security_content from security where security_id = ? ',[d_id]);
    };
    getComment(c_id){       //获取文章的评论内容
        return DAO('select * from commentary where commentary.security_id = ?;',[c_id]);
    };
    getReply(r_id){     //获取回复内容
        return DAO('select * FROM reply WHERE reply.com_id =  ?',[r_id]);
    };

    goSend(content){        //发表文章评论
        return DAO('insert into commentary(security_id,com_txt,user_name,user_pic,com_time) values(?,?,?,?,?)',
            [content.w_id,content.p_comment,content.u_name,content.u_pic,content.c_time])
    }
    goReply(content){      //回复
        return DAO('insert into reply(com_id,reply_txt,user_name,user_pic,reply_time) values(?,?,?,?,?)',
            [content.c_id,content.r_content,content.u_name,content.u_pic,content.c_time])
    }
    getCard(){
        return DAO("select * FROM cardinfos ORDER BY card_id DESC");
    }
    sendCard(card){
        return DAO("INSERT into cardinfos(card_content,user_name,user_pic,card_img,card_time) VALUES(?,?,?,?,?)"
            ,[card.txt,card.user_name,card.user_pic,card.card_images,card.n_time]);
    }
}

module.exports = new Database();