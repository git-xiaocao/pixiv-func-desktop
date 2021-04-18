# Kotlin的Pixiv请求示例

基于[Jetpack Compose](https://github.com/jetbrains/compose-jb) 和 [Ktor](https://github.com/ktorio/ktor)

```kotlin
fun main(){
    GlobalScope.launch {
        // 第一页 r18开启
        val ranking = PixivRequest.getRanking(1, true,
            requestException = { exception ->
                println(exception)
            },
            receiveException = { exception ->
                println(exception)
            }
        )
        //这里是获取的内容
        println(ranking)
    }
}
```
