.class public final Landroid/provider/MiuiSettings$ForceTouch;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForceTouch"
.end annotation


# static fields
.field private static final ForceTouchEnable:Ljava/lang/String; = "force_touch_enable"

.field private static mDeepPress:F

.field private static mLightPress:F

.field private static mSupportForceTouch:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 4626
    const/4 v0, -0x1

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 4627
    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 4628
    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHighend()V
    .locals 8

    .prologue
    .line 4673
    const-string/jumbo v1, "ro.product.device"

    const-string v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4674
    .local v0, "device":Ljava/lang/String;
    const-string v1, "capricorn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4675
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->getTotalInternalMemory()J

    move-result-wide v2

    .line 4676
    .local v2, "internalMemroyRom":J
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v4

    .line 4677
    .local v4, "ram":J
    const-wide v6, 0x1dcd650000L

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    const-wide v6, 0xee6b2800L

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 4678
    :cond_0
    const/4 v1, 0x0

    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 4681
    .end local v2    # "internalMemroyRom":J
    .end local v4    # "ram":J
    :cond_1
    return-void
.end method

.method public static getDeepPressure()F
    .locals 2

    .prologue
    .line 4666
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4667
    const-string v0, "force_touch_deep"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    .line 4669
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return v0
.end method

.method public static getLightPressure()F
    .locals 2

    .prologue
    .line 4659
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4660
    const-string v0, "force_touch_light"

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 4662
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    return v0
.end method

.method private static getTotalInternalMemory()J
    .locals 18

    .prologue
    .line 4684
    const-wide/16 v10, 0x0

    .line 4685
    .local v10, "totalSize":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4686
    .local v6, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4688
    const-string/jumbo v12, "mixed"

    const-string/jumbo v13, "ro.boot.sdcard.type"

    const-string/jumbo v14, "mixed"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4689
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 4690
    .local v7, "state":Ljava/lang/String;
    const-string/jumbo v12, "mounted"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "mounted_ro"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4692
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4696
    .end local v7    # "state":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 4697
    .local v5, "path":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 4698
    goto :goto_0

    .line 4700
    .end local v5    # "path":Ljava/io/File;
    :cond_2
    move-wide v8, v10

    .line 4701
    .local v8, "totalInternalMemory":J
    const-wide/32 v2, 0xf4240

    .line 4702
    .local v2, "MB":J
    const-wide/32 v0, 0x3b9aca00

    .line 4703
    .local v0, "GB":J
    const-wide/16 v12, 0x8

    mul-long/2addr v12, v0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_3

    .line 4704
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-long v14, v8, v0

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-long v12, v12

    mul-long v8, v12, v0

    .line 4708
    :goto_1
    return-wide v8

    .line 4706
    :cond_3
    div-long v12, v8, v0

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    mul-long v8, v12, v0

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4641
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4646
    :goto_0
    return v3

    .line 4644
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4645
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "force_touch_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4646
    .local v0, "enable":I
    if-eqz v0, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static isSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4631
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-gez v0, :cond_0

    .line 4632
    const-string/jumbo v0, "support_force_touch"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 4633
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v1, :cond_0

    .line 4634
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->checkHighend()V

    .line 4637
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 4632
    goto :goto_0

    :cond_2
    move v1, v2

    .line 4637
    goto :goto_1
.end method

.method public static setEnabled(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4650
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4655
    :goto_0
    return v1

    .line 4653
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4654
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "force_touch_enable"

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v2

    .line 4655
    goto :goto_0
.end method
