.class public Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;
.source "PushContainerHelper.java"


# static fields
.field private static final aYC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/i;->aYC:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 42
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bkq:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 43
    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    .line 59
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move-object v0, v1

    .line 92
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 66
    if-eqz p3, :cond_2

    .line 67
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->FL()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    const-string v0, "regSecret is empty, return null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/g/a;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 76
    :try_start_0
    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/i;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :cond_2
    :goto_1
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 83
    const-wide/16 v4, 0x5

    iput-wide v4, v1, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 84
    const-string v3, "fakeid"

    iput-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->d(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 87
    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cM(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 89
    invoke-virtual {v2, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->eJ(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 90
    invoke-virtual {v2, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cK(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 91
    invoke-virtual {v2, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->eI(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-object v0, v2

    .line 92
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string v1, "encryption error. "

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 163
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/i;->aYC:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 164
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 166
    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 167
    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->LI()Z

    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FL()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/a;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->LL()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/i;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->LG()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/i;->a(Lcom/xiaomi/xmpush/thrift/ActionType;)Lorg/apache/thrift/TBase;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-static {v1, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 115
    :cond_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Lcom/xiaomi/mipush/sdk/DecryptException;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/mipush/sdk/DecryptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->LL()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/xmpush/thrift/ActionType;)Lorg/apache/thrift/TBase;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->aYD:[I

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;-><init>()V

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;-><init>()V

    goto :goto_0

    .line 141
    :pswitch_2
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;-><init>()V

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;-><init>()V

    goto :goto_0

    .line 145
    :pswitch_4
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    goto :goto_0

    .line 147
    :pswitch_5
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    goto :goto_0

    .line 149
    :pswitch_6
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 151
    :pswitch_7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;-><init>()V

    goto :goto_0

    .line 153
    :pswitch_8
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    goto :goto_0

    .line 155
    :pswitch_9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public static a([B[B)[B
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/i;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/i;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
