import { requireCJLib } from "libark_interop_loader.so"
import { NetworkLib } from "libnetwork_api.so"

const libNetwork: NetworkLib = requireCJLib("libohos_app_cangjie_network.so") as NetworkLib

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(_ => {
          libNetwork.sayHello()
        })
    }
    .height('100%')
    .width('100%')
  }
}