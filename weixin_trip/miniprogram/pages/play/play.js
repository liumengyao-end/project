const db = wx.cloud.database();
// pages/sort/sort.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [],
    sortId: ""  //id值 index页面传过来的id值 
  },
  loadMore() {
    // 接收传过来的参数id
    var id = this.data.sortId
    console.log(id);  //前一个页面的 自定义属性的id
    // 2:显示数据加载提示框
    wx.showLoading({
      title: '加载中...',
    })
    db.collection("indexDetail").where({_id: id })   
      .get().then(res => {
        console.log(res, 1)
        console.log(res.data) //数组
        var list = res.data[0];    //获取的数组
        console.log(list, 2);
        //将查询结果保存
        this.setData({
          list: list       //数组[{}{}{}{}]    //获取这个页面的did  修改did为传过来的id值
        })
        wx.hideLoading();
      }
      )
      .catch(err => { console.log(err) })
    // 



  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(options.id);
    this.setData({
      sortId: options.id
    })

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    this.loadMore();
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