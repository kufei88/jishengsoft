<template>
  <div style="width: 90%; margin: 0 auto">
    <el-dialog
      title="济胜商务手机客户端"
      width="400px"
      :visible.sync="showJsPhone"
    >
      <img
        src="../assets/download/JsPhone.jpg"
        style="display: block; margin: 10px auto"
      />
      <a
        class="download"
        style="
          text-align: center;
          font-size: 24px;
          display: block;
          margin: 0px auto;
          height: 60px;
          line-height: 60px;
          padding: 0;
        "
        href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/JsPhone.apk"
        >直接下载</a
      >
    </el-dialog>
    <el-dialog title="济胜商务果蔬APP" width="400px" :visible.sync="showSgpf">
      <img
        src="../assets/download/sgpf.png"
        style="display: block; margin: 10px auto"
      />
      <a
        class="download"
        style="
          text-align: center;
          font-size: 24px;
          display: block;
          margin: 0px auto;
          height: 60px;
          line-height: 60px;
          padding: 0;
        "
        href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/sgpf.apk"
        >直接下载</a
      >
    </el-dialog>
    <div class="box">
      <el-row>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_手机客户端.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>济胜商务</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>手机客户端</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a class="download" @click="jsphoneClick">下载</a>
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_果蔬APP.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>济胜商务</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>果蔬APP</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a class="download" @click="sgpfClick">下载</a>
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_手机服务端.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>济胜商务</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>手机服务端</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a
                      class="download"
                      href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/install.exe"
                      >下载</a
                    >
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_手机服务端更新程序.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>手机服务端</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>更新程序</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a
                      class="download"
                      href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/updateMobile.exe"
                      >下载</a
                    >
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_手机打印服务端.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>手机</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>打印服务端</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a
                      class="download"
                      href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/printServer.rar"
                      >下载</a
                    >
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img
                  src="../assets/download/济胜商务_手机操作说明.png"
                  class="image"
                />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>济胜商务手</b>
                  </div>
                  <div style="font-size: 14px; text-align: center">
                    <b>机操作说明</b>
                  </div>
                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a
                      class="download"
                      href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/%E6%B5%8E%E8%83%9C%E5%95%86%E5%8A%A1%E6%89%8B%E6%9C%BA%E7%A8%8B%E5%BA%8F%E6%93%8D%E4%BD%9C%E8%AF%B4%E6%98%8E.doc"
                      >下载</a
                    >
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="8" :md="6" :lg="4" :xl="4">
          <el-card :body-style="{ padding: '0px' }" shadow="hover">
            <el-row>
              <el-col span="10" style="padding: 20px">
                <img src="../assets/download/云看板.png" class="image" />
              </el-col>
              <el-col span="14">
                <div style="padding: 10px">
                  <div style="font-size: 14px; text-align: center">
                    <b>济胜大屏</b>
                  </div>

                  <div
                    class="bottom clearfix"
                    style="margin-top: 10px; text-align: center"
                  >
                    <a
                      class="download"
                      href="http://www.jishengsoft.com/admin/uploadFiles/JsPhone/JsScreen.apk"
                      >下载</a
                    >
                  </div>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>
    </div>

    <div style="font-size: 18px">其它资料可以在下面的云盘下载</div>
    <iframe
      src="https://cloud.zjnu.edu.cn/share/629834945bef7f79356a379f02"
      frameborder="0"
      width="100%"
      height="550px"
    ></iframe>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showJsPhone: false,
      showSgpf: false,
    };
  },
  methods: {
    jsphoneClick() {
      this.showJsPhone = true;
    },
    sgpfClick() {
      this.showSgpf = true;
    },
  },
};
</script>
<style>
.box {
  margin-bottom: 20px;
}
.product {
  width: 200px;
  margin-right: 10px;
}
.product img {
  width: 40px;
  height: 40px;
  vertical-align: middle;
  margin-right: 10px;
}
.product a {
  display: inline-block;
  width: auto;
}
.download {
  font-size: 13px;
  border: 2px solid rgb(82, 152, 222);
  margin-top: 8px;
  height: 24px;
  line-height: 24px;
  color: rgb(82, 152, 222);
  background-color: #f7f7f7;
  padding: 5px 15px;
  font-weight: 700;
  border-radius: 5px;
  text-align: center;
  margin-left: 10px;
}
.image {
  width: 70px;
  height: 70px;
}
</style>
