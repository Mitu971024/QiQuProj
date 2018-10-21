const DAO=require('../model/DAO');

class DB{
    //获取路线全部数据
    getwayStrategy(){
        return DAO('call getwaystrate;',[])
    }
    //获取骑行课堂数据
    getclassStrategy(){
        return DAO('call getclassstrate;',[])
    }
    //获取推荐文章数据..
    getrecStrategy(){
        return DAO('call getrecstrate;',[])
    }
    //获取详情内容和更新点击量
    getStrDetails(id){
        return DAO('call strateDetails(?)',[id]);
    }
}

module.exports=new DB();