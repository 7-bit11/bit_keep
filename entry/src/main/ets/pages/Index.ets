import window from '@ohos.window';
import router from '@ohos.router';
import PreferencesUtil from '../component/PreferencesUtil';
import { CustomDialogBit } from './componets/CustomDialogBit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  controller: CustomDialogController = new CustomDialogController(
    {
      builder: CustomDialogBit({
        confirm: this.onConfirm
      })
    }
  );

  onConfirm() {
    PreferencesUtil.putValue("isAgree", true)
    router.replaceUrl({ url: "pages/HomePage" },
      router.RouterMode.Single,
      error => {
        if (error) {
          console.log('跳转失败 code:' + error.code + ' msg:' + error.message)
        }
      })
  }

  ///初始化
  async aboutToAppear() {
    let data = await PreferencesUtil.getValue("isAgree", false)
    console.log(data?.toString());
    if (!data) {
      setTimeout(() => {
        this.controller.open()
      }, 1000)
      return
    }
    router.replaceUrl({ url: "pages/HomePage" },
      router.RouterMode.Single,
      error => {
        if (error) {
          console.log('跳转失败 code:' + error.code + ' msg:' + error.message)
        }
      })
  }

  build() {
    Column() {
      Image($rawfile("Mac@1x.png")).width(150)
        .objectFit(ImageFit.Auto).layoutWeight(1)
        .onClick(() => {
          this.controller.open()
        })
      Image($rawfile("lucky 1@1x.png")).width(100)
        .objectFit(ImageFit.Auto)
      Text("支持IPV6网络")
    }
    .height('100%')
    .width('100%')

    //.backgroundColor("#54FF9F")
  }
}

