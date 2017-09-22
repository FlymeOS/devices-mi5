.class public Lcom/android/camera/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final IS_A1:Z

.field public static final IS_A10:Z

.field public static final IS_A12:Z

.field public static final IS_A4:Z

.field public static final IS_A7:Z

.field public static final IS_A8:Z

.field public static final IS_A9:Z

.field public static final IS_B3:Z

.field public static final IS_B3_PRO:Z

.field public static final IS_B5:Z

.field public static final IS_B6:Z

.field public static final IS_B7:Z

.field public static final IS_C3A:Z

.field public static final IS_C5:Z

.field public static final IS_C6:Z

.field public static final IS_CM:Z

.field public static final IS_CM_TEST:Z

.field public static final IS_H2XLTE:Z

.field public static final IS_H2X_LC:Z

.field public static final IS_H3C:Z

.field public static final IS_HM:Z

.field public static final IS_HM2:Z

.field public static final IS_HM2A:Z

.field public static final IS_HM2S:Z

.field public static final IS_HM2S_LTE:Z

.field public static final IS_HM3:Z

.field public static final IS_HM3A:Z

.field public static final IS_HM3B:Z

.field public static final IS_HM3LTE:Z

.field public static final IS_HM3X:Z

.field public static final IS_HM3Y:Z

.field public static final IS_HM3Z:Z

.field public static final IS_HONGMI:Z

.field public static final IS_MI11:Z

.field public static final IS_MI2:Z

.field public static final IS_MI2A:Z

.field public static final IS_MI3:Z

.field public static final IS_MI3TD:Z

.field public static final IS_MI3W:Z

.field public static final IS_MI4:Z

.field public static final IS_MI5:Z

.field public static final IS_MI7:Z

.field public static final IS_MI9:Z

.field public static final IS_NEXUS5:Z

.field public static final IS_PAD1:Z

.field public static final IS_STABLE:Z

.field public static final IS_XIAOMI:Z

.field public static final MODULE:Ljava/lang/String;

.field private static sFpNavEventNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    .line 16
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    .line 17
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    .line 18
    const-string v0, "pisces"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    .line 19
    const-string v0, "cancro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    .line 20
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3:Z

    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/camera/Device;->IS_HM:Z

    .line 22
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2S:Z

    .line 23
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2S:Z

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2:Z

    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2S_LTE:Z

    .line 25
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    .line 27
    const-string v0, "gucci"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3X:Z

    .line 28
    const-string v0, "hermes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    .line 29
    const-string v0, "hennessy"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    .line 30
    const-string v0, "dior"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    .line 31
    const-string v0, "kenzo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3A:Z

    .line 32
    const-string v0, "kate"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3B:Z

    .line 33
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_2

    const-string v0, "HM2014816"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    :goto_4
    sput-boolean v1, Lcom/android/camera/Device;->IS_H2XLTE:Z

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_H2X_LC:Z

    .line 35
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    .line 37
    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    .line 38
    const-string v0, "leo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    .line 39
    const-string v0, "ferrari"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI9:Z

    .line 40
    const-string v0, "ido"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    .line 41
    const-string v0, "aqua"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    .line 42
    const-string v0, "gemini"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    .line 43
    const-string v0, "capricorn"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    .line 44
    const-string v0, "natrium"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    .line 45
    const-string v0, "lithium"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    .line 46
    const-string v0, "scorpio"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    .line 47
    const-string v0, "libra"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    .line 48
    const-string v0, "land"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A12:Z

    .line 49
    const-string v0, "hydrogen"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    .line 50
    const-string v0, "helium"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    .line 51
    const-string v0, "omega"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    .line 52
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "nike"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B6:Z

    .line 53
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B5:Z

    .line 54
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "prada"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C5:Z

    .line 55
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C6:Z

    .line 56
    const-string v0, "rolex"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C3A:Z

    .line 57
    const-string v0, "is_hongmi"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    .line 58
    const-string v0, "is_xiaomi"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    .line 59
    const-string v0, "hammerhead"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_NEXUS5:Z

    .line 61
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_CM:Z

    .line 62
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_STABLE:Z

    .line 63
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    return-void

    :cond_3
    move v0, v2

    .line 19
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 20
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 21
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 23
    goto/16 :goto_3

    :cond_7
    move v1, v2

    .line 33
    goto/16 :goto_4
.end method

.method public static adjustScreenLight()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-boolean v1, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-nez v1, :cond_0

    const-string v1, "support_camera_boost_brightness"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getBurstShootCount()I
    .locals 2

    .prologue
    .line 72
    const-string v0, "burst_shoot_count"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContinuousShotCallbackClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, "camera_continuous_shot_callback_class"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContinuousShotCallbackSetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-string v0, "camera_continuous_shot_callback_setter"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpNavEventNameList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    sget-object v5, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    .line 364
    const-string v5, "fp_nav_event_name_list"

    invoke-static {v5}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "strArray":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 366
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 367
    .local v3, "str":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    return-object v5
.end method

.method public static isCaptureStopFaceDetection()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEffectWatermarkFilted()Z
    .locals 2

    .prologue
    .line 293
    const-string v0, "is_camera_app_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFaceDetectNeedRotation()Z
    .locals 2

    .prologue
    .line 244
    const-string v0, "is_camera_face_detection_need_orientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFloatExposureTime()Z
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFrontVideoQualityShouldBe1080P()Z
    .locals 1

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI9:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHDRFreeze()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "is_camera_freeze_after_hdr_capture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHFRVideoCaptureSupported()Z
    .locals 1

    .prologue
    .line 350
    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHalDoesCafWhenFlashOn()Z
    .locals 1

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoldBlurBackground()Z
    .locals 2

    .prologue
    .line 256
    const-string v0, "is_camera_hold_blur_background"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLCPlatform()Z
    .locals 2

    .prologue
    .line 144
    const-string v0, "leadcore"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowPowerQRScan()Z
    .locals 2

    .prologue
    .line 281
    const-string v0, "is_camera_lower_qrscan_frequency"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLowerEffectSize()Z
    .locals 2

    .prologue
    .line 132
    const-string v0, "is_lower_size_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMDPRender()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public static isMTKPlatform()Z
    .locals 2

    .prologue
    .line 148
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNeedForceRecycleEffectPopup()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewHdrParamKeyUsed()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3B:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B5:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNvPlatform()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "nvidia"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOrientationIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public static isPad()Z
    .locals 2

    .prologue
    .line 309
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPanoUsePreviewFrame()Z
    .locals 1

    .prologue
    .line 346
    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQcomPlatform()Z
    .locals 2

    .prologue
    .line 136
    const-string v0, "qcom"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isReleaseLaterForGallery()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public static isResetToCCAFAfterCapture()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public static isSubthreadFrameListerner()Z
    .locals 2

    .prologue
    .line 285
    const-string v0, "is_camera_preview_with_subthread_looper"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportGradienter()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "support_camera_gradienter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSquare()Z
    .locals 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedASD()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    const-string v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, "asd":I
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportedAoHDR()Z
    .locals 2

    .prologue
    .line 160
    const-string v0, "support_camera_aohdr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedAsdFlash()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    const-string v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "asd":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportedAsdHdr()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 194
    const-string v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 195
    .local v0, "asd":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportedAsdMotion()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "asd":I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportedAsdNight()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, "asd":I
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportedAudioFocus()Z
    .locals 2

    .prologue
    .line 213
    const-string v0, "support_camera_audio_focus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedChromaFlash()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "support_chroma_flash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedDynamicEffectPopup()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI9:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3X:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedEdgeTouch()Z
    .locals 2

    .prologue
    .line 297
    const-string v0, "support_edge_handgrip"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFaceInfoWaterMark()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedFastCapture()Z
    .locals 2

    .prologue
    .line 225
    const-string v0, "support_camera_press_down_capture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedGPS()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "support_camera_record_location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedHFR()Z
    .locals 2

    .prologue
    .line 164
    const-string v0, "support_camera_hfr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedIntelligentBeautify()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "support_camera_age_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedLongPressBurst()Z
    .locals 2

    .prologue
    .line 96
    const-string v0, "support_camera_burst_shoot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMagicMirror()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedManualFunction()Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "support_camera_manual_function"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMovieSolid()Z
    .locals 2

    .prologue
    .line 76
    const-string v0, "support_camera_movie_solid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMuteCameraSound()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/camera/Device;->IS_CM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedObjectTrack()Z
    .locals 2

    .prologue
    .line 172
    const-string v0, "support_object_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedPeakingMF()Z
    .locals 2

    .prologue
    .line 260
    const-string v0, "support_camera_peaking_mf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedQuickSnap()Z
    .locals 2

    .prologue
    .line 305
    const-string v0, "support_camera_quick_snap"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedSecondaryStorage()Z
    .locals 2

    .prologue
    .line 152
    const-string v0, "support_dual_sd_card"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedShaderEffect()Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "support_camera_shader_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedSkinBeautify()Z
    .locals 2

    .prologue
    .line 100
    const-string v0, "support_camera_skin_beauty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedStereo()Z
    .locals 1

    .prologue
    .line 354
    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    return v0
.end method

.method public static isSupportedTiltShift()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 301
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v1, :cond_0

    const-string v1, "support_camera_tilt_shift"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSupportedTorchCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3A:Z

    if-nez v1, :cond_0

    const-string v1, "support_camera_torch_capture"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportedUbiFocus()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "support_camera_ubifocus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoPause()Z
    .locals 2

    .prologue
    .line 120
    const-string v0, "support_camera_video_pause"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoQuality4kUHD()Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "support_camera_4k_quality"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedWaterMark()Z
    .locals 2

    .prologue
    .line 112
    const-string v0, "support_camera_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceSizeLimited()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    return v0
.end method

.method public static isThirdDevice()Z
    .locals 1

    .prologue
    .line 248
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsedMorphoLib()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "is_camera_use_morpho_lib"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVideoSnapshotSizeLimited()Z
    .locals 1

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRestartPreviewAfterZslSwitch()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
