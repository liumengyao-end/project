// pages/Load/Load.js
const db = wx.cloud.database({});
Page({

  /**
   * 页面的初始数据
   */
  data: {
    images:[],
    fileIDS: [],  //上传成功保存fileID
    fileIds:[]
  },
  //1.选中图片
  selectImages:function(){
    wx.chooseImage({
      count:9,
      sizeType:["original","compressed"],
      sourceType:["album","camera"],
      success:(res)=>{
        var list=res.tempFilePaths;
        this.setData({
          images:list
        })
        console.log(list)
      }
    })
  },
  //提交图片
  showPics:function(){
    wx.showLoading({
      title: '正在提交',
    })
    var promiseArr=[];
    for(var i=0;i<this.data.images.length;i++){
      promiseArr.push(new Promise((reslove,reject)=>{
        var item=this.data.images[i];
        var suffix=/\.\w+$/.exec(item)[0];
        var newFile=new Date().getTime()+Math.floor(Math.random()*9999)+suffix;
        wx.cloud.uploadFile({
          cloudPath: newFile,//新文件名
          filePath: item,//选中文件
          success: res => {//上传成功
            var fid = res.fileID;
            var ids = this.data.fileIDS.concat(fid);//拼接
            console.log(ids)
            this.setData({
              fileIDS: ids
            })
            //3.3.6：将当前promise任务追加任务列表中
            resolve();
            console.log(fileIDS,1)
          },
          fail: err => {//上传失败
            console.log(err)
          }
        })
      }))
    }//循环结束
    db.collection("other")  //指定集合
      .add({    //添加记录
        data: {    //数据
          fileIds: this.data.fileIDS //图片的fileID
        }
      })
      .then(res => {
        //8：隐藏加载提示框
        wx.hideLoading();
        //9：显示提示框“发表成功”
        wx.showToast({ title: "发表成功" })
      })
      .catch(err => {
        //11：隐藏加载提示框
        wx.hideLoading();
        //12：显示提示框“评论失败”
        wx.showToast({ title: "发表失败" })
      })
  
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.showPics();
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