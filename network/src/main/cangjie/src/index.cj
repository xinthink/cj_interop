package ohos_app_cangjie_network

internal import ohos.base.nativeLog
internal import cj_res_network.app

import ohos.ark_interop.*
import ohos.ark_interop_macro.*

@Interop[ArkTS]
public func sayHello(): Unit {
    nativeLog("Hello Cangjie!")
}
