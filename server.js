var express=require('express');
var app=express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
var objResult = {
    flag: true,
    msg:'',
    data:{},
    timestamp:0
}
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '111111',
    database : 'db_wjj'
});
connection.connect();
//请求数据库
app.use(express.static('./public'));
app.get('/api/news',function (req, res) {
    var data=req.query;
    switch (data.type) {
        case 'get':
            getNews();
            break;
        case 'del':
            delNews();
            break;
        default:
            showNews();
            break;
    }
    // 请求id
    function getNews(){
        //connection客户端连接  query()提交sql语句给mysql服务器执行
        connection.query('select * from news where id='+data.id,function (error,results) {
            if (error){
                console.log(error.message);
            }else{
                res.json(results);
            }
        })
    };
    function showNews(){
        connection.query('select * from news',function (error,results) {
            if (error){
                console.log(error.message);
            }else{
                res.json(results);
            }
        })
    };
    function delNews(){
        connection.query('delete from news where id='+data.id,function (error,results) {
            if (error){
                console.log(error.message);
            }else{
                objResult.flag=true;
                objResult.msg='删除成功';
                objResult.timestamp=Date.now();
                res.json(objResult);
                return;
            }
        })
    };
});
app.post('/api/news',function (req, res) {
        var json = req.body;
    // 标题
    var title;
    for(var i=0;i<json.data.length;i++){
        if(json.data[i].name == 'title'){
            title = json.data[i].value;
            break;
        }
    }
    var content;
    for(var i=0;i<json.data.length;i++){
        if(json.data[i].name == 'content'){
            content = json.data[i].value;
            break;
        }
    }
    if (json.type == 'add') {
        if (title == '') {
            objResult.flag = false;
            objResult.msg = '标题不能为空';
            objResult.timestamp = Date.now();
            res.json(objResult);
            return;
        }
        // connection.query('select * from news where title="'+title+'" and content="'+content+'" ',function (error,results) {
        connection.query('select * from news where title="'+title+'"', function (error, results) {
            if (error) {
                console.log(error.message);
            } else {
                if (results.length != 0) {
                    objResult.flag = false;
                    objResult.msg = '标题重复';
                    objResult.timestamp = Date.now();
                    res.json(objResult);
                    return;
                } else {
                    connection.query('INSERT INTO news (title,content) VALUES ("' + title + '","' + content + '")', function (error, results) {
                        if (error) {
                            console.log(error.message);
                        } else {
                            objResult.flag = true;
                            objResult.msg = '添加成功';
                            objResult.timestamp = Date.now();
                            res.json(objResult);
                            return;
                        }
                    })
                }
            }
        })
    }
    if (json.type == 'edit') {
        connection.query('update news set title="' + title + '",content="' + content + '" where id=' + json.id, function (error, results) {
            if (error) {
                console.log(error.message);
            } else {
                objResult.flag = true;
                objResult.msg = '修改成功';
                objResult.timestamp = Date.now();
                res.json(objResult);
                return;
            }
        })
    }
});
app.listen(802,function () {
    console.log('服务器监听在802端口');
});