import {requireCJLib} from "libark_interop_loader.so"
import {CustomLib} from "libark_interop_api.so"

const cjNetwork: CustomLib = requireCJLib("libark_interop_api.so") as CustomLib

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
          cjNetwork.sayHello()
        })
    }
    .height('100%')
    .width('100%')
  }
}