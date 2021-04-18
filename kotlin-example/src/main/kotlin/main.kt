import androidx.compose.desktop.DesktopMaterialTheme
import androidx.compose.desktop.Window
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import api.PixivRequest
import io.ktor.util.*
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import java.awt.image.BufferedImage
import javax.imageio.ImageIO

@KtorExperimentalAPI
fun main() = Window(title = "Kotlin示例", centered = true, icon = getWindowIcon()) {

    var pageInput by remember { mutableStateOf(1) }
    var isR18Checked by remember { mutableStateOf(true) }

    DesktopMaterialTheme(
        colors = Colors(
            primary = Color(240,85,149),
            primaryVariant = Color(236,43,123),
            secondary = Color(236,43,123),
            secondaryVariant = Color(240,85,149),
            background = Color(0xFF171717),
            surface = Color(0xFF171717),
            error = Color.Red,
            onPrimary = Color.Black,
            onSecondary = Color.Black,
            onBackground = Color.White,
            onSurface = Color.White,
            onError = Color.Black,
            isLight = false
        )
    ) {
        Surface(modifier = Modifier.fillMaxSize()) {
            Column(modifier = Modifier.padding(20.dp)) {
                TextField(
                    modifier = Modifier.width(300.dp).padding(bottom = 20.dp),
                    value = if (pageInput == -1) "" else pageInput.toString(),
                    onValueChange = { value ->
                        if (value.isEmpty()) {
                            pageInput = -1
                        } else {
                            try {
                                pageInput = value.toInt()
                            } catch (e: Exception) {
                            }
                        }
                    },
                    label = { Text("页码") }

                )
                Row(modifier = Modifier.padding(bottom = 20.dp)) {
                    Text("R18", modifier = Modifier.padding(end = 5.dp))
                    Switch(checked = isR18Checked, onCheckedChange = {
                        isR18Checked = it
                    })
                }
                Button(onClick = {
                    GlobalScope.launch {
                        val ranking = PixivRequest.getRanking(pageInput, isR18Checked,
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

                }) {
                    Text("获取排行榜")
                }
            }

        }
    }
}

fun getWindowIcon(): BufferedImage {
    var image: BufferedImage? = null
    try {
        image = ImageIO.read(object {}.javaClass.getResource("icon.png"))
    } catch (e: Exception) {
        // image file does not exist
    }

    if (image == null) {
        image = BufferedImage(1, 1, BufferedImage.TYPE_INT_RGB)
    }

    return image
}
