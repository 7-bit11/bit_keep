@Entry
@Component
struct StartPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Image($rawfile("Mac@1x.png"))
      Image($rawfile("lucky 1@1x.png"))
      Text("我们支持IPV6网络")
    }
    .height('100%')
    .width('100%')
  }
}