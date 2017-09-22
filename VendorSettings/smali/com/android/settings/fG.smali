.class public Lcom/android/vendorsettings/fG;
.super Ljava/lang/Object;
.source "MusicDsClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static gm()Lcom/android/vendorsettings/fG;
    .locals 3

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 18
    :try_start_0
    const-string v0, "com.android.settings.dolby.DsClientWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 23
    :goto_0
    if-eqz v0, :cond_0

    .line 24
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fG;

    .line 31
    :goto_1
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v2, "MusicDsClient"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    const-string v1, "MusicDsClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/fG;

    invoke-direct {v0}, Lcom/android/vendorsettings/fG;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public O(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public P(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(Lcom/android/vendorsettings/fH;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public gn()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public go()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public gp()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public gq()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
