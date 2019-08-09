// pages/search/search-address/search-address.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    pics:[]
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
          pics: list           //数据名:值
        })
        console.log(list)
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
    this.showPic1(); // 小图标
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