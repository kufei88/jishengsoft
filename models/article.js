

//引入mongoose模块
const mongoose = require('mongoose')

 var db = mongoose.connect('mongodb://localhost:27017/kov-blog-dev');

//定义数据模型，可以看到，我们下面创建了一个表，最后将model导出即可
const articleSchema = mongoose.Schema({
  title :String,
  createTime : String
}, { collection: 'articles'})
//这里mongoose.Schema最好要写上第二个参数，明确指定到数据库中的哪个表取数据

//导出model模块
const Article = module.exports = mongoose.model('article',articleSchema);

// const Article = mongoose.model('article',articleSchema);
//   Article.find({},function(err,result){
//     if(err){
//         return console.error(err);
//     }
//     console.log(result);
// });