const DAO=require('../model/DAO');

class DB{
    // //获取全部数据
    // getStrategy(type){
    //     return DAO('SELECT sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy ' +
    //         'where sType=?  order by sTime DESC,smCheck desc',[type]);
    // }
    //获取路线全部数据
    getwayStrategy(){
        // return DAO(' SELECT sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy ' +
        //     'where sType="路线" order by sTime DESC,smCheck desc',[]);
        return DAO('call getwaystrate;',[])
    }
    //获取骑行课堂数据
    getclassStrategy(){
        // return DAO(' SELECT sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy ' +
        //     'where sType="骑行课堂" order by sTime DESC,smCheck desc',[]);
        return DAO('call getclassstrate;',[])
    }
    //获取推荐文章数据
    getrecStrategy(){
        // return DAO(' SELECT sTitle,sImg,sIntro,sTime,sFrom,sType,smCheck FROM strategy ' +
        //     'where sType="推荐文章" order by sTime DESC,smCheck desc',[]);
        return DAO('call getrecstrate;',[])
    }
    //获取详情内容和更新点击量
    getStrDetails(id){
        return DAO('call strateDetails(?)',[id]);
    }
}

module.exports=new DB();