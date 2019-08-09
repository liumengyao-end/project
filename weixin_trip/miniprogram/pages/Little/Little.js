// pages/Little/Little.js
const db = wx.cloud.database();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    photo:[],
    little:[],
    uid:''  //上一个页面传过来的
  },
  loadMove: function () {
    //接收对应小图标id
    //显示数据加载提示框
    wx.showLoading({
      title: '努力加载...',
    })
  //获得小图标id保存在数组中
    

    wx.hideLoading();
    },
  getText: function () {
    //获得传过来的id
   var  uid = this.data.uid;
    db.collection('Little')
    .where({id:uid})//查询新集合中id与uid值相同的记录
    .get()
    .then(res=>{
      //console.log(res)
      var list=res.data;
      console.log(list)//获得Little集合中的记录
      this.setData({
        little:list
      })
      //console.log(123456789)
      //console.log(this.little)//undefined
    })
  },
  //这个函数还需要改，数据要从Little集合中获取
  showPic1: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("mypic")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          photo: list           //数据名:值
        })
        //console.log(list)
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //console.log(options);
    var uid=options.id;//从index页面获取回来的数据
    this.setData({        //将查询结果保存
      uid: uid           //数据名:值
    })
    this.loadMove();
    this.showPic1();
    this.getText();
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