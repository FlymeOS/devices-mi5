.class public Lmiui/util/HandyModeUtils;
.super Ljava/lang/Object;
.source "HandyModeUtils.java"


# static fields
.field public static final DEFAULT_IS_ENTER_DIRECT:Z

.field static SUPPORTED:Z

.field private static sInstance:Lmiui/util/HandyModeUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field mScreenSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "ro.miui.has_handy_mode_sf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    .line 45
    :cond_0
    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    iput v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    .line 46
    return-void
.end method

.method private calcScreenSizeToScale(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 62
    iget v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    div-float v0, p1, v0

    return v0
.end method

.method private getDefaultScreenSize()F
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    const/high16 v1, 0x40900000    # 4.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40600000    # 3.5f

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lmiui/util/HandyModeUtils;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lmiui/util/HandyModeUtils;

    invoke-direct {v0, p0}, Lmiui/util/HandyModeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getScreenSize()F
    .locals 6

    .prologue
    .line 53
    iget-object v4, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 54
    .local v2, "w":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v4, v5

    .line 57
    .local v3, "widthInch":F
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v4, v5

    .line 58
    .local v0, "heightInch":F
    mul-float v4, v3, v3

    mul-float v5, v0, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    return v4
.end method

.method public static isFeatureVisible()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getScale()F
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lmiui/util/HandyModeUtils;->getSize()F

    move-result v0

    .line 101
    .local v0, "size":F
    invoke-direct {p0, v0}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v1

    return v1
.end method

.method public getSize()F
    .locals 5

    .prologue
    .line 93
    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getDefaultScreenSize()F

    move-result v0

    .line 94
    .local v0, "defaultScreenSize":F
    iget-object v2, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "handy_mode_size"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 95
    .local v1, "size":F
    invoke-virtual {p0, v1}, Lmiui/util/HandyModeUtils;->isValidSize(F)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 96
    :cond_0
    return v1
.end method

.method public hasShowed()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_enter_direct"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    return v0
.end method

.method public isEnterDirect()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handy_mode_enter_direct"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidSize(F)Z
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v0

    const v1, 0x3f6147ae    # 0.88f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnterDirect(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_enter_direct"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 81
    return-void
.end method

.method public setSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handy_mode_size"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 90
    return-void
.end method
