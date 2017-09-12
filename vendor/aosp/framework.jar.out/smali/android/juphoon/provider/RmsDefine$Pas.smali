.class public final Landroid/juphoon/provider/RmsDefine$Pas;
.super Ljava/lang/Object;
.source "RmsDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/juphoon/provider/RmsDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pas"
.end annotation


# static fields
.field public static final ACCEPT_STATUS:Ljava/lang/String; = "accept_status"

.field public static final ACCEPT_STATUS_ACPT_PUSH:I = 0x1

.field public static final ACCEPT_STATUS_NOT_ACPT_PUSH:I = 0x0

.field public static final ACTIVE_STATUS:Ljava/lang/String; = "active_status"

.field public static final ADDR:Ljava/lang/String; = "addr"

.field public static final AUTHORITY:Ljava/lang/String; = "pas"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_HISTORY_MESSAGE:Landroid/net/Uri;

.field public static final CONTENT_URI_SEARCH:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEVICE_API_EXTRA:Ljava/lang/String; = "device_api_extra"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FIELD:Ljava/lang/String; = "field"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDTYPE:Ljava/lang/String; = "idtype"

.field public static final INTRO:Ljava/lang/String; = "intro"

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_3:I = 0x3

.field public static final LEVEL_4:I = 0x4

.field public static final LEVEL_5:I = 0x5

.field public static final LOGO:Ljava/lang/String; = "logo"

.field public static final LOGO_TYPE:Ljava/lang/String; = "logo_type"

.field public static final MENU_CONFIG:Ljava/lang/String; = "menu_config"

.field public static final MENU_TIMESTAMP:Ljava/lang/String; = "menu_timestamp"

.field public static final MENU_TYPE:Ljava/lang/String; = "menu_type"

.field public static final MENU_TYPE_HAS_MENU:I = 0x1

.field public static final MENU_TYPE_NO_MENU:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OWNER_NUMBER:Ljava/lang/String; = "owner_number"

.field public static final PA_UUID:Ljava/lang/String; = "pa_uuid"

.field public static final PINYIN_KEY_ALT:Ljava/lang/String; = "pinyin_key_alt"

.field public static final QRCODE:Ljava/lang/String; = "qrcode"

.field public static final RECOMMEND_LEVEL:Ljava/lang/String; = "recommend_level"

.field public static final SEARCH_KEY_ALT:Ljava/lang/String; = "search_key_alt"

.field public static final SORT_KEY_ALT:Ljava/lang/String; = "sort_key_alt"

.field public static final SUBSCRIBE_STATUS:Ljava/lang/String; = "subscribe_status"

.field public static final SUBSCRIBE_STATUS_FOLLOW:I = 0x1

.field public static final SUBSCRIBE_STATUS_UNFOLLOW:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "pas"

.field public static final TABLE_NAME_HISTORY_MESSAGE:Ljava/lang/String; = "pas_history_message"

.field public static final TABLE_NAME_SEARCH:Ljava/lang/String; = "pas_search"

.field public static final TEL:Ljava/lang/String; = "tel"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_ENTERTAINMENT:I = 0x3

.field public static final TYPE_LIFE:I = 0x1

.field public static final TYPE_OTHER:I = 0x4

.field public static final TYPE_WORK:I = 0x2

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final ZIP:Ljava/lang/String; = "zip"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "content://pas/pas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Pas;->CONTENT_URI:Landroid/net/Uri;

    .line 302
    const-string v0, "content://pas/pas_search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Pas;->CONTENT_URI_SEARCH:Landroid/net/Uri;

    .line 303
    const-string v0, "content://pas/pas_history_message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/juphoon/provider/RmsDefine$Pas;->CONTENT_URI_HISTORY_MESSAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
