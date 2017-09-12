.class public Lcom/android/server/display/PaperModeService;
.super Lcom/android/server/SystemService;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PaperModeService$LocalService;,
        Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;,
        Lcom/android/server/display/PaperModeService$ScreenOnReceiver;,
        Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;,
        Lcom/android/server/display/PaperModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PAPER_MODE_TIME_OFF:Ljava/lang/String; = "paper_mode_time_off"

.field private static final PAPER_MODE_TIME_ON:Ljava/lang/String; = "paper_mode_time_on"

.field private static final TAG:Ljava/lang/String; = "PaperModeService"

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_END_TIME:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_START_TIME:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME_ONOFF:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TYPE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;


# instance fields
.field private mCheckToPaperMode:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaperModePkg:Ljava/lang/String;

.field private mPaperModeType:I

.field private mPaperModeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

.field private mShowToastPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 43
    const-string v0, "screen_paper_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TYPE:Landroid/net/Uri;

    .line 44
    const-string v0, "screen_paper_mode_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    .line 45
    const-string v0, "screen_paper_mode_time_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME:Landroid/net/Uri;

    .line 46
    const-string v0, "screen_paper_mode_time_off"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ONOFF:Landroid/net/Uri;

    .line 47
    const-string v0, "screen_paper_mode_time_start"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_START_TIME:Landroid/net/Uri;

    .line 48
    const-string v0, "screen_paper_mode_time_end"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_END_TIME:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    .line 66
    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/PaperModeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService;->setPaperModeTimeOnOff(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/PaperModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/PaperModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/PaperModeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/display/PaperModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    return-object p1
.end method

.method private initColorService(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 117
    const-string v1, "is_xiaomi"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qti.service.colorservice"

    const-string v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v1, Lcom/android/server/display/PaperModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/PaperModeService$1;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPaperModeTimeOnOff(Z)V
    .locals 3
    .param p1, "OnOff"    # Z

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_off"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 207
    return-void
.end method

.method public static startPaperModeService()V
    .locals 3

    .prologue
    .line 269
    const-string v1, "support_screen_paper_mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 271
    .local v0, "systemServiceManager":Lcom/android/server/SystemServiceManager;
    const-class v1, Lcom/android/server/display/PaperModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 273
    :cond_0
    return-void
.end method

.method private updatePaperMode()V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/PaperModeService;->setPaperModeTimeOnOff(Z)V

    .line 235
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 238
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z

    if-nez v0, :cond_2

    .line 239
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V

    goto :goto_0
.end method

.method private updatePkgPaperMode()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isScreenPaperMode()Z

    move-result v1

    .line 248
    .local v1, "isScreenPaperMode":Z
    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mPaperModeWhiteList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 249
    .local v2, "paperModePkg":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 251
    .local v0, "isPkgPaperMode":Z
    :goto_0
    if-eq v1, v0, :cond_0

    .line 252
    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mShowToastPkgSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModePkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/PaperModeService$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/PaperModeService$2;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_0
    return-void

    .line 249
    .end local v0    # "isPkgPaperMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_paper_mode_enabled"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 154
    .local v0, "paperModeEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_paper_mode_time_enabled"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 158
    .local v2, "paperModeTimeEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_paper_mode_time_off"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 162
    .local v3, "paperModeTimeOnOff":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MiuiSettings$System;->isInPaperModeTimeSchedule(Landroid/content/Context;)Z

    move-result v1

    .line 163
    .local v1, "paperModeIsinTime":Z
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_paper_mode"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/PaperModeService;->mPaperModeType:I

    .line 167
    if-eqz v0, :cond_4

    if-eqz v2, :cond_0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/display/PaperModeService;->mCheckToPaperMode:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$System;->getScreenPaperModePkgList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/PaperModeService;->mPaperModeWhiteList:Ljava/util/HashMap;

    .line 171
    return-void

    .end local v0    # "paperModeEnabled":Z
    .end local v1    # "paperModeIsinTime":Z
    .end local v2    # "paperModeTimeEnabled":Z
    .end local v3    # "paperModeTimeOnOff":Z
    :cond_1
    move v0, v5

    .line 150
    goto :goto_0

    .restart local v0    # "paperModeEnabled":Z
    :cond_2
    move v2, v5

    .line 154
    goto :goto_1

    .restart local v2    # "paperModeTimeEnabled":Z
    :cond_3
    move v3, v5

    .line 158
    goto :goto_2

    .restart local v1    # "paperModeIsinTime":Z
    .restart local v3    # "paperModeTimeOnOff":Z
    :cond_4
    move v4, v5

    .line 167
    goto :goto_3
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 77
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 78
    new-instance v2, Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/PaperModeService$SettingsObserver;-><init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    .line 79
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TYPE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ONOFF:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_START_TIME:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_END_TIME:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, "UserTimeChangedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/display/PaperModeService$UserTimeChangedReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "TimeModeFilter":Landroid/content/IntentFilter;
    const-string v2, "paper_mode_time_on"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "paper_mode_time_off"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/display/PaperModeService$PaperModeTimeOnOffReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    .line 110
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    .line 114
    .end local v0    # "TimeModeFilter":Landroid/content/IntentFilter;
    .end local v1    # "UserTimeChangedFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 72
    const-class v0, Lcom/android/server/display/PaperModeManager;

    new-instance v1, Lcom/android/server/display/PaperModeService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/PaperModeService$LocalService;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/PaperModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
