@Entry
@Component
struct StartPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Image($rawfile("Mac@1x.png")).
      width(150)
        .objectFit(ImageFit.Auto).layoutWeight(1)
      Image($rawfile("lucky 1@1x.png")).width(100)
        .objectFit(ImageFit.Auto)
      Text("支持IPV6网络")
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#54FF9F")
  }
}