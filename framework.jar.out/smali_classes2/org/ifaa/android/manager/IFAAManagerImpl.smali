.class public Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManager;
.source "IFAAManagerImpl.java"


# static fields
.field private static instance:Lorg/ifaa/android/manager/IFAAManagerImpl;


# instance fields
.field private Debug:Z

.field private IFAA_TYPE_FINGER:I

.field private IFAA_TYPE_IRIS:I

.field private IFAA_VERSION:I

.field private TAG:Ljava/lang/String;

.field private mDevModel:Ljava/lang/String;

.field private mFingerActName:Ljava/lang/String;

.field private mFingerPackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManager;-><init>()V

    .line 16
    iput-boolean v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    .line 17
    const-string v0, "IfaaManagerImpl"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    .line 21
    iput v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_VERSION:I

    .line 22
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    .line 23
    const-string v0, "com.android.settings.NewFingerprintActivity"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lorg/ifaa/android/manager/IFAAManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lorg/ifaa/android/manager/IFAAManagerImpl;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 72
    const-string v1, "finger_alipay_ifaa_model"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "miuiFeature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 79
    .end local v0    # "miuiFeature":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceModel devcieModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-object v1

    .line 76
    .restart local v0    # "miuiFeature":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v2, "persist.sys.ifaa"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "ifaaProp":I
    iget v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    iget v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    or-int/2addr v2, v3

    and-int v1, v0, v2

    .line 43
    .local v1, "res":I
    iget-boolean v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportBIOTypes return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return v1
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_VERSION:I

    return v0
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    .line 56
    .local v1, "res":I
    iget v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    if-ne v2, p2, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    const/4 v1, 0x0

    .line 63
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBIOManager authType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return v1
.end method
