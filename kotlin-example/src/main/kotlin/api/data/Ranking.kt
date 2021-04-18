package api.data

import com.google.gson.annotations.SerializedName


data class Ranking(
    @SerializedName("content")
    val content: String,
    @SerializedName("contents")
    val contents: List<Content>,
    @SerializedName("date")
    val date: String,
    @SerializedName("mode")
    val mode: String,

    @SerializedName("next_date")
    val nextDate: Boolean,
    @SerializedName("page")
    val page: Int,
    /**
     * int 或 bool
     * */
    @SerializedName("next")
    val next: Any,
    /**
     * int 或 bool
     * */
    @SerializedName("prev")
    val prev: Any,

    @SerializedName("prev_date")
    val prevDate: String,
    @SerializedName("rank_total")
    val rankTotal: Int
) {
    override fun toString(): String {
        return "Ranking(content='$content', contents=$contents, date='$date', mode='$mode', nextDate=$nextDate, page=$page, next=$next, prev=$prev, prevDate='$prevDate', rankTotal=$rankTotal)"
    }
}

data class Content(
    @SerializedName("attr")
    val attr: String,
    @SerializedName("bookmarkable")
    val bookmarkable: Boolean,
    @SerializedName("date")
    val date: String,
    @SerializedName("height")
    val height: Int,
    @SerializedName("illust_book_style")
    val illustBookStyle: String,
    @SerializedName("illust_id")
    val illustId: Int,
    @SerializedName("illust_page_count")
    val illustPageCount: String,
    @SerializedName("illust_type")
    val illustType: String,
    @SerializedName("illust_upload_timestamp")
    val illustUploadTimestamp: Int,
    @SerializedName("is_bookmarked")
    val isBookmarked: Boolean,
    @SerializedName("profile_img")
    val profileImg: String,
    @SerializedName("rank")
    val rank: Int,
    @SerializedName("rating_count")
    val ratingCount: Int,
    @SerializedName("tags")
    val tags: List<String>,
    @SerializedName("title")
    val title: String,
    @SerializedName("url")
    val url: String,
    @SerializedName("user_id")
    val userId: Int,
    @SerializedName("user_name")
    val userName: String,
    @SerializedName("view_count")
    val viewCount: Int,
    @SerializedName("width")
    val width: Int,
    @SerializedName("yes_rank")
    val yesRank: Int
) {
    override fun toString(): String {
        return "Content(attr='$attr', bookmarkable=$bookmarkable, date='$date', height=$height, illustBookStyle='$illustBookStyle', illustId=$illustId, illustPageCount='$illustPageCount', illustType='$illustType', illustUploadTimestamp=$illustUploadTimestamp, isBookmarked=$isBookmarked, profileImg='$profileImg', rank=$rank, ratingCount=$ratingCount, tags=$tags, title='$title', url='$url', userId=$userId, userName='$userName', viewCount=$viewCount, width=$width, yesRank=$yesRank)"
    }
}

