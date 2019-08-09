// pages/upload/upload.js
const db = wx.cloud.database();
Page({

  /**
   * 页面的初始数据
   */
  data: {
        list:[],
        photo:[],
        icon:[],
        adress:[]
  },
  showAdress: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          adress: list           //数据名:值
        })
        console.log(list)
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  showPic1: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("other")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          today: list           //数据名:值
        })
        console.log(list)
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  //上传图片
  selectImage: function () {
    //函数:此函数负责选中图片并且上传至云存储
    //    上传成功后将图片fileID保存myphoto
    //    集合中
    wx.chooseImage({
      count: 1,    //一次上传一张图片
      sizeType: ["original", "compressed"],
      sourceType: ["album", "camera"],
      success: function (res) {
        //选中图片地址列表 数组
        var file = res.tempFilePaths[0];
        //console.log(list); 17:49
        var newFile = new Date().getTime() + ".jpg";
        wx.cloud.uploadFile({
          cloudPath: newFile,
          filePath: file,
          success: res => {
            var fId = res.fileID;
            db.collection("other").add({
              data: { fileID: fId }//记录
            })
              .then(res => { console.log(res) })
              .catch(err => { console.log(err) })
          },
          fail: (err) => {      //上传失败
            console.log(err);//失败原因
          }
        })
      },
    })
  },
  //添加数据的函数
  insert: function () {
    db.collection("Little").add({
      data: { id: '26b301645d417e4d078daa4b52008c81', text: '亲子美食', detail:'￥138=1大1小（1.3米以下）|厦门朗豪酒店亲子自助午餐：周末节日不加收！',price:'￥138',price2:'￥216'},
      success: function (res) { console.log(res) },
      fail: function (err) { console.log(err) }
    })
  },
  //更新云数据库中数据，然然age:40
  update: function () {
    db.collection("").doc("").update({
      data: {
        age: 40
      }
    }).then(res => { console.log(res) })
      .catch(err => { console.log(err) })
  },
  //删除云数据库中的数据，删除一个age：30的然然
  remove: function () {
    db.collection("").doc("")
      .remove({
        data: {
          age: 40
        }
      }).then(res => { console.log(res) })
      .catch(err => { console.log(err) })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.showPic1();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})