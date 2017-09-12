.class public Lcom/android/server/lights/MiuiLightsService$LightImpl;
.super Lcom/android/server/lights/LightsService$LightImpl;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LightImpl"
.end annotation


# static fields
.field private static final LIGHT_ON_MS:I = 0x1f4

.field private static final STOP_FLASH_MSG:I = 0x1


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mTurnOn:Z

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;I)V
    .locals 3
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;II)V

    .line 161
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl$8;

    invoke-direct {v1, p0}, Lcom/android/server/lights/MiuiLightsService$LightImpl$8;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    .line 69
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    .line 70
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/MiuiLightsService$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/lights/MiuiLightsService$LightImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->isTurnOnButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->isTurnOnBatteryLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/lights/MiuiLightsService$LightImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->isDisableButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    return v0
.end method

.method private isDisableButtonLight()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_buttons_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_key_use_enable"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 252
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_buttons_state"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private isTurnOnBatteryLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_light_turn_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTurnOnButtonLight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_turn_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private observe()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 75
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$1;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1000(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_key_use_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$2;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$3;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$3;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$4;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$4;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$5;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$5;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_breathing_light_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$6;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$6;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 136
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/lights/MiuiLightsService$LightImpl$7;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl$7;-><init>(Lcom/android/server/lights/MiuiLightsService$LightImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private realSetLightLocked(IIIII)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 225
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 226
    return-void
.end method

.method private updateState(IIIII)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    .line 230
    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    .line 231
    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    .line 232
    iput p4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    .line 233
    iput p5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    .line 234
    return-void
.end method


# virtual methods
.method public onBootPhase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->observe()V

    .line 150
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 153
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method setFlashing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "colorSettingKey"    # Ljava/lang/String;
    .param p2, "freqSettingKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 173
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x110d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 175
    .local v1, "defaultColor":I
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$200(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 178
    .local v0, "color":I
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(IIII)V

    .line 180
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    return-void
.end method

.method setLightLocked(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 186
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v6, 0x1

    .line 190
    .local v6, "forceOn":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z

    if-nez v2, :cond_3

    :cond_0
    if-nez v6, :cond_3

    .line 191
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 222
    :cond_1
    :goto_1
    return-void

    .end local v6    # "forceOn":Z
    :cond_2
    move v6, v1

    .line 186
    goto :goto_0

    .line 196
    .restart local v6    # "forceOn":Z
    :cond_3
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v8, :cond_6

    .line 197
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v2, v2, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v2, v7

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 199
    .local v0, "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    if-eqz p1, :cond_4

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v2, :cond_4

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 210
    .end local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    .line 211
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    .line 213
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v8, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v1, v7

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 216
    .restart local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mTurnOn:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    :cond_5
    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v3, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v4, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v5, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    goto :goto_1

    .line 202
    .end local v0    # "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_6
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v7, :cond_4

    .line 204
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v1, v1, v8

    check-cast v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget v1, v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_4

    .line 205
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    goto :goto_1
.end method
