.class public Lcom/xiaomi/mipush/sdk/a;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# static fields
.field private static aYr:Lcom/xiaomi/mipush/sdk/a;


# instance fields
.field private aYs:Lcom/xiaomi/mipush/sdk/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/a;->init()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->aYr:Lcom/xiaomi/mipush/sdk/a;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/xiaomi/mipush/sdk/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/a;->aYr:Lcom/xiaomi/mipush/sdk/a;

    .line 45
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/a;->aYr:Lcom/xiaomi/mipush/sdk/a;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/xiaomi/mipush/sdk/c;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/mipush/sdk/c;-><init>(Lcom/xiaomi/mipush/sdk/a;Lcom/xiaomi/mipush/sdk/b;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    .line 59
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->aYv:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/a;->di(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/c;->deviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "valid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    .line 73
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c;->aVf:Z

    .line 74
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "envType"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/mipush/sdk/c;->aXG:I

    .line 75
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    const-string v2, "regResource"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/mipush/sdk/c;->aYw:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public FH()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->FO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public FI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aYt:Ljava/lang/String;

    return-object v0
.end method

.method public FJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aYu:Ljava/lang/String;

    return-object v0
.end method

.method public FK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->aYv:Ljava/lang/String;

    return-object v0
.end method

.method public FL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->regSecret:Ljava/lang/String;

    return-object v0
.end method

.method public FM()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->FO()Z

    move-result v0

    return v0
.end method

.method public FN()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c;->isValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Fu()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/c;->aXG:I

    return v0
.end method

.method public cU(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    const-string v1, "vName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/c;->versionName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->clear()V

    .line 133
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->mContext:Landroid/content/Context;

    const-string v1, "mipush"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->invalidate()V

    .line 242
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c;->aVf:Z

    return v0
.end method

.method public setPaused(Z)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/a;->aYs:Lcom/xiaomi/mipush/sdk/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/c;->setPaused(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method
