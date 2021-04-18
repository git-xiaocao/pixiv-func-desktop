package api

import Config
import api.data.Ranking
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.engine.*
import io.ktor.client.engine.okhttp.*
import io.ktor.client.features.*
import io.ktor.client.features.json.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.util.*


object PixivRequest {

    @KtorExperimentalAPI
    val client = HttpClient(OkHttp) {
        engine {
            proxy = ProxyBuilder.socks(Config.proxyIP, Config.proxyPort)
        }

        install(HttpTimeout) {
            connectTimeoutMillis = 1000 * 15
            requestTimeoutMillis = 1000 * 15
            socketTimeoutMillis = 1000 * 15
        }

        install(JsonFeature) {
            serializer = GsonSerializer()
        }


    }

    @KtorExperimentalAPI
    suspend fun getRanking(
        page: Int, r18: Boolean,
        requestException: (exception: Exception) -> Unit,
        receiveException: (exception: Exception) -> Unit
    ): Ranking? {

        var rankingData: Ranking? = null


        try {

            val response = client.get<HttpResponse> {
                url("https://www.pixiv.net/ranking.php")
                parameter("mode", if (r18) "daily_r18" else "daily")
                parameter("p", page)
                parameter("format", "json")

                header("Cookie", Config.cookie)
                header("Referer", Config.referer)
                header("User-Agent", Config.userAgent)
                header("x-user-id", Config.userId)
                header("x-csrf-token", Config.token)
            }

            if (response.status == HttpStatusCode.OK) {
                try {
                    rankingData = response.receive<Ranking>()
                } catch (e: Exception) {
                    receiveException(e)
                }
            }
        } catch (e: Exception) {
            requestException(e)
        }

        return rankingData
    }
}
