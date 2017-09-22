.class public Lcom/xiaomi/push/service/V;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# static fields
.field private static beA:Ljava/lang/String;

.field private static beE:Lcom/xiaomi/push/service/V;


# instance fields
.field private beB:Ljava/util/List;

.field private beC:Lcom/xiaomi/push/b/b;

.field private beD:Lcom/xiaomi/channel/commonutils/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/xiaomi/push/service/V;

    invoke-direct {v0}, Lcom/xiaomi/push/service/V;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/V;->beE:Lcom/xiaomi/push/service/V;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static declared-synchronized Fj()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-class v1, Lcom/xiaomi/push/service/V;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "XMPushServiceConfig"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    const-string v2, "DeviceUUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    .line 123
    sget-object v2, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 124
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->Fj()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DeviceUUID"

    sget-object v3, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/V;->beA:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static IJ()Lcom/xiaomi/push/service/V;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/xiaomi/push/service/V;->beE:Lcom/xiaomi/push/service/V;

    return-object v0
.end method

.method private IK()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/xiaomi/push/service/V;->load()V

    .line 76
    :cond_0
    return-void
.end method

.method private IM()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beD:Lcom/xiaomi/channel/commonutils/c/j;

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/W;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/W;-><init>(Lcom/xiaomi/push/service/V;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/V;->beD:Lcom/xiaomi/channel/commonutils/c/j;

    .line 173
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beD:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-static {v0}, Lcom/xiaomi/smack/d/h;->c(Lcom/xiaomi/channel/commonutils/c/j;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/V;Lcom/xiaomi/channel/commonutils/c/j;)Lcom/xiaomi/channel/commonutils/c/j;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/service/V;->beD:Lcom/xiaomi/channel/commonutils/c/j;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/V;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/V;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xiaomi/push/service/V;->save()V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/V;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/push/service/V;)Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    return-object v0
.end method

.method private load()V
    .locals 4

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 179
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    const-string v1, "XMCloudCfg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    invoke-static {v1}, Lcom/google/protobuf/micro/b;->g(Ljava/io/InputStream;)Lcom/google/protobuf/micro/b;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/xiaomi/push/b/b;->c(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    .line 184
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/xiaomi/push/b/b;

    invoke-direct {v0}, Lcom/xiaomi/push/b/b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    .line 194
    :cond_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 186
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load config failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 185
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private save()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    const-string v1, "XMCloudCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v0

    .line 204
    iget-object v2, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/b;->a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 205
    invoke-virtual {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method GI()I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/xiaomi/push/service/V;->IK()V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/b;->GI()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IL()Lcom/xiaomi/push/b/b;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/xiaomi/push/service/V;->IK()V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beC:Lcom/xiaomi/push/b/b;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/X;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Lcom/xiaomi/push/b/e;)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Hs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Hr()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/V;->GI()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/V;->IM()V

    .line 97
    :cond_0
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/push/service/V;->beB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaomi/push/service/X;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/X;

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 102
    invoke-virtual {v3, p1}, Lcom/xiaomi/push/service/X;->d(Lcom/xiaomi/push/b/e;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    :cond_1
    return-void
.end method
