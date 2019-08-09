//初始化默认云数据库
const db = wx.cloud.database();
// pages/index/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    adress:[],//顶部弹窗
    show: false,
    list:[],
    imgUrls:[],
    today:[],
    photo:[],
    indicatorDots: true, // 是否显示面板指示点
    autoplay: true,      // 是否自动切换
    circular: true,      // 是否采用衔接滑动
    interval: 3000,      // 自动切换时间间隔
    duration: 1000,      // 滑动动画时长
    indexDetail:[],//四张图片
    baokuan:[]
  },
  xiaLa(){
    this.setData({ show: true });
    this.showAdress();
  },
  onClose() {
    this.setData({ show: false });
  },
  // 爆款推荐跳转
  jumpDetail:function(e){
    console.log(e)
    var did = e.currentTarget.dataset.id;
    wx.navigateTo({
      url: '/pages/detail/detail?id=' + did,
    })
  },
  jumpPlay:function(e){
    var id=e.currentTarget.dataset.id;
    wx.navigateTo({
      url: '/pages/play/play?id='+id,
    })
  },
  jumpLittle:function(e){
    var id = e.target.dataset.id
    wx.navigateTo({      
      url: '/pages/Little/Little?id='+id,
    })
  },
  jumpSearch:function(e){
    var id = e.target.dataset.id;
    wx.navigateTo({//跳转
      url: '/pages/search/search'
    })
  },
  // 顶部弹窗
  showAdress: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("Adress")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        console.log(1);
        console.log(res,1);
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
  //今日预约、爆款推荐图标
  iconImage: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("icon_image")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          today: list           //数据名:值
        })
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  //爆款推荐
  baokuan: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("detail_ex")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          baokuan: list           //数据名:值
        })
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
//小图标
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
       // console.log(list)
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  //轮播图片
  showPic: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("myphoto")//指定集合
    .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
          imgUrls: list           //数据名:值
        })
        //console.log(list)
      })
      .catch(err => {           //查询失败
        console.log(err);
      })
    //2:将返回数据保存 list
  },
  
  showPic2: function () {//函数:此函数负责获取myphoto集合所有记录
    //    并且显示模板中
    //1:获取集合myphoto所有记录10:33
    db.collection("indexDetail")//指定集合
      .get()        //查询
      .then(res => {            //查询成功
        var list = res.data;
        this.setData({        //将查询结果保存
        indexDetail: list           //数据名:值
        })
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
    this.showPic();
    this.showPic1();
    this.showPic2();
    this.iconImage();
    this.baokuan();
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