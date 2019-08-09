const db = wx.cloud.database();
// pages/sort/sort.js
Page({
  /**
   * 页面的初始数据
   */
  data: {
    list: [],
    detailid: ""  //id值 index页面传过来的id值 
  },
  //店铺
  onClickShop() {
    wx.switchTab({
      url: '/pages/index/index',
    });
  },
  onClickButton(event) {
    console.log(event);
    var did = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: '/pages/buy/buy?id=' + did
    });
  },

  loadMore() {
    var id = this.data.detailid
    console.log(id, 888);
    // 2:显示数据加载提示框
    wx.showLoading({
      title: '加载中...',
    })
    // 显示集合中的图片
    //往集合sort_detail中每个元素添加 一个did 设置did的值为上一个页面传过来的参数 然后在查询id为当前单击的id的数据
    // 在add.js中添加
    //1：获取集合中的 id 为传过来的id的数据    
    db.collection("detailList").where({ did: id })    //这个id和上面的第14行的id一样 在sort_detail中查找这个元素为。。。的id的时候  ====》在list-one-detail集合中添加一个新的属性did 值为这个传过来的值
      .get().then(res => {
        console.log("查询")
        console.log(res);
        console.log(res.data) //数组
        var list = res.data[0];    //获取的数组
        console.log(list, 333333);
        console.log(typeof list.price);
        //将查询结果保存
        this.setData({
          list: list       //数组[{}{}{}{}]    //获取这个页面的did  修改did为传过来的id值
        })
        wx.hideLoading();
      }
      )
      .catch(err => { console.log(err) })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(options)
    this.setData({
      detailid: options.id
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