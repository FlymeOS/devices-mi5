.class public Lcom/android/server/lights/MiuiLightsService;
.super Lcom/android/server/lights/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/MiuiLightsService$1;,
        Lcom/android/server/lights/MiuiLightsService$LightImpl;,
        Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;
    }
.end annotation


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSupportTapFingerprint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v3

    .line 28
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v5, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v5

    .line 29
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v4

    .line 30
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/lights/MiuiLightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    .line 34
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 35
    const-string v0, "support_tap_fingerprint_sensor_to_home"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    .line 36
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    .line 37
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 38
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->onBootPhase()V

    .line 39
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->onBootPhase()V

    .line 40
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->onBootPhase()V

    .line 41
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    :cond_0
    return-void
.end method
