import PreferencesUtil from '../../component/PreferencesUtil'
import router from '@ohos.router'

@CustomDialog
export struct CustomDialogBit {
  controller: CustomDialogController
  confirm: Function = () => {
  };
  cancel: Function = () => {
  };

  build() {
    Column({ space: 20 }) {
      Text("用户协议").fontSize(20)
        .fontWeight(FontWeight.Bold)
      List() {
        ListItem() {
          Text("欢迎您使用 bk(以下简称我方)内容平台服务!您在使用我方内容平台服务前，应当仔细" +
            "阅读《我方内容平台服务协议》(下称“本协议”)中全部条款及《我方免责声明》、《我方知识产权" +
            "声明》、《我方隐私保护声明》等我方平台规则内容，在您勾选“本人已阅读并同意《我方内容平台服" +
            "务协议》” 按钮且点击“同意开通”后,将视为您已充分理解且同意本协议的所有条款，且具有浏览" +
            "我方内容平台信息、购买及消费相关内容等使用我方内容平台服务的相应权利能力和行为能力，并可以" +
            "对自己的行为承担法律责任。我方内容平台有权对本协议条款进行修改，修改后的协议一旦公布即有效" +
            "替代原有协议。您可随时查询最新协议。如您不同意本服务协议及/或随时对其的修改，可以主动取消" +
            "我方内容平台提供的服务，您一旦使用我方内容平台服务，即视为您已了解并完全同意本协议及其他服" +
            "务条款中的各项内容，包括我方内容平台对本协议及其他服务条款随时所做的任何修改，并成为我方内" +
            "容平台用户。请您务必审慎阅读、充分理解各条款内容，特别是免除或限制责任的相应条款，以及开通" +
            "或使用某项服务的单独协议，并选择接受或不接受。限制、免责条款将以加粗形式提示您注意。如果您" +
            "未满 18 周岁,请在法定监护人的陪同下阅读本协议及其他上述协议，并特别注意未成年人使用条款。")
        }
      }.layoutWeight(1)

      Row({ space: 20 }) {
        Button("取消")
          .onClick(() => {
            this.cancel()
            this.controller.close()
          }).backgroundColor("#D3D3D3")
        Button("同意")
          .onClick(() => {
            this.confirm();
            this.controller.close()

          })
      }
    }
    .padding(20)
  }
}