.class public abstract Lcom/xiaomi/push/service/M;
.super Ljava/lang/Object;
.source "PushConstants.java"


# static fields
.field public static ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

.field public static ACTION_CHANGE_HOST:Ljava/lang/String;

.field public static ACTION_CLOSE_CHANNEL:Ljava/lang/String;

.field public static ACTION_FORCE_RECONNECT:Ljava/lang/String;

.field public static ACTION_OPEN_CHANNEL:Ljava/lang/String;

.field public static ACTION_PING_TIMER:Ljava/lang/String;

.field public static ACTION_RESET_CONNECTION:Ljava/lang/String;

.field public static ACTION_SEND_IQ:Ljava/lang/String;

.field public static ACTION_SEND_MESSAGE:Ljava/lang/String;

.field public static ACTION_SEND_PRESENCE:Ljava/lang/String;

.field public static ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

.field public static EXTRA_AUTH_METHOD:Ljava/lang/String;

.field public static EXTRA_CHANNEL_ID:Ljava/lang/String;

.field public static EXTRA_CLIENT_ATTR:Ljava/lang/String;

.field public static EXTRA_CLOUD_ATTR:Ljava/lang/String;

.field public static EXTRA_KICK:Ljava/lang/String;

.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field public static EXTRA_SECURITY:Ljava/lang/String;

.field public static EXTRA_SESSION:Ljava/lang/String;

.field public static EXTRA_SID:Ljava/lang/String;

.field public static EXTRA_TOKEN:Ljava/lang/String;

.field public static EXTRA_USER_ID:Ljava/lang/String;

.field public static bef:Ljava/lang/String;

.field public static beg:Ljava/lang/String;

.field public static beh:Ljava/lang/String;

.field public static bei:Ljava/lang/String;

.field public static bej:Ljava/lang/String;

.field public static bek:Ljava/lang/String;

.field public static bel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "1"

    sput-object v0, Lcom/xiaomi/push/service/M;->bef:Ljava/lang/String;

    .line 42
    const-string v0, "2"

    sput-object v0, Lcom/xiaomi/push/service/M;->beg:Ljava/lang/String;

    .line 44
    const-string v0, "3"

    sput-object v0, Lcom/xiaomi/push/service/M;->beh:Ljava/lang/String;

    .line 99
    const-string v0, "com.xiaomi.push.OPEN_CHANNEL"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    .line 100
    const-string v0, "com.xiaomi.push.SEND_MESSAGE"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    .line 101
    const-string v0, "com.xiaomi.push.SEND_IQ"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_IQ:Ljava/lang/String;

    .line 102
    const-string v0, "com.xiaomi.push.BATCH_SEND_MESSAGE"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    .line 103
    const-string v0, "com.xiaomi.push.SEND_PRES"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    .line 104
    const-string v0, "com.xiaomi.push.CLOSE_CHANNEL"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    .line 105
    const-string v0, "com.xiaomi.push.FORCE_RECONN"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 106
    const-string v0, "com.xiaomi.push.RESET_CONN"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    .line 107
    const-string v0, "com.xiaomi.push.UPDATE_CHANNEL_INFO"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    .line 108
    const-string v0, "com.xiaomi.push.SEND_STATS"

    sput-object v0, Lcom/xiaomi/push/service/M;->bei:Ljava/lang/String;

    .line 166
    const-string v0, "com.xiaomi.push.CHANGE_HOST"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_CHANGE_HOST:Ljava/lang/String;

    .line 168
    const-string v0, "com.xiaomi.push.PING_TIMER"

    sput-object v0, Lcom/xiaomi/push/service/M;->ACTION_PING_TIMER:Ljava/lang/String;

    .line 171
    const-string v0, "ext_user_id"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_USER_ID:Ljava/lang/String;

    .line 172
    const-string v0, "ext_chid"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    .line 173
    const-string v0, "ext_sid"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SID:Ljava/lang/String;

    .line 174
    const-string v0, "ext_token"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_TOKEN:Ljava/lang/String;

    .line 175
    const-string v0, "ext_auth_method"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    .line 176
    const-string v0, "ext_security"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SECURITY:Ljava/lang/String;

    .line 177
    const-string v0, "ext_kick"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_KICK:Ljava/lang/String;

    .line 178
    const-string v0, "ext_client_attr"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    .line 179
    const-string v0, "ext_cloud_attr"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    .line 180
    const-string v0, "ext_pkg_name"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 181
    const-string v0, "ext_notify_id"

    sput-object v0, Lcom/xiaomi/push/service/M;->bej:Ljava/lang/String;

    .line 182
    const-string v0, "ext_notify_type"

    sput-object v0, Lcom/xiaomi/push/service/M;->bek:Ljava/lang/String;

    .line 183
    const-string v0, "ext_session"

    sput-object v0, Lcom/xiaomi/push/service/M;->EXTRA_SESSION:Ljava/lang/String;

    .line 184
    const-string v0, "sig"

    sput-object v0, Lcom/xiaomi/push/service/M;->bel:Ljava/lang/String;

    return-void
.end method

.method public static getErrorDesc(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    packed-switch p0, :pswitch_data_0

    .line 331
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 266
    :pswitch_0
    const-string v0, "ERROR_OK"

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "ERROR_SERVICE_NOT_INSTALLED"

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v0, "ERROR_NETWORK_NOT_AVAILABLE"

    goto :goto_0

    .line 275
    :pswitch_3
    const-string v0, "ERROR_NETWORK_FAILED"

    goto :goto_0

    .line 278
    :pswitch_4
    const-string v0, "ERROR_ACCESS_DENIED"

    goto :goto_0

    .line 281
    :pswitch_5
    const-string v0, "ERROR_AUTH_FAILED"

    goto :goto_0

    .line 284
    :pswitch_6
    const-string v0, "ERROR_MULTI_LOGIN"

    goto :goto_0

    .line 287
    :pswitch_7
    const-string v0, "ERROR_SERVER_ERROR"

    goto :goto_0

    .line 290
    :pswitch_8
    const-string v0, "ERROR_RECEIVE_TIMEOUT"

    goto :goto_0

    .line 293
    :pswitch_9
    const-string v0, "ERROR_READ_ERROR"

    goto :goto_0

    .line 296
    :pswitch_a
    const-string v0, "ERROR_SEND_ERROR"

    goto :goto_0

    .line 299
    :pswitch_b
    const-string v0, "ERROR_RESET"

    goto :goto_0

    .line 302
    :pswitch_c
    const-string v0, "ERROR_NO_CLIENT"

    goto :goto_0

    .line 305
    :pswitch_d
    const-string v0, "ERROR_SERVER_STREAM"

    goto :goto_0

    .line 308
    :pswitch_e
    const-string v0, "ERROR_THREAD_BLOCK"

    goto :goto_0

    .line 311
    :pswitch_f
    const-string v0, "ERROR_SERVICE_DESTROY"

    goto :goto_0

    .line 314
    :pswitch_10
    const-string v0, "ERROR_SESSION_CHANGED"

    goto :goto_0

    .line 317
    :pswitch_11
    const-string v0, "ERROR_READ_TIMEOUT"

    goto :goto_0

    .line 320
    :pswitch_12
    const-string v0, "ERROR_CONNECTIING_TIMEOUT"

    goto :goto_0

    .line 322
    :pswitch_13
    const-string v0, "ERROR_USER_BLOCKED"

    goto :goto_0

    .line 324
    :pswitch_14
    const-string v0, "ERROR_REDIRECT"

    goto :goto_0

    .line 326
    :pswitch_15
    const-string v0, "ERROR_BIND_TIMEOUT"

    goto :goto_0

    .line 328
    :pswitch_16
    const-string v0, "ERROR_PING_TIMEOUT"

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
