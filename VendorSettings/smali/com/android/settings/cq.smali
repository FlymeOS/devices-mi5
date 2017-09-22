.class final Lcom/android/vendorsettings/cq;
.super Lcom/android/vendorsettings/search/a;
.source "DeviceInfoSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/vendorsettings/search/a;-><init>()V

    return-void
.end method

.method private E(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 519
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3

    .prologue
    .line 483
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 484
    const v1, 0x7f08002e

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 485
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .prologue
    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    const-string v1, "ro.build.selinux"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/cq;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "selinux_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    const-string v1, "ro.url.safetylegal"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/cq;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const-string v1, "safetylegal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_1
    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/cq;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    const-string v1, "fcc_equipment_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    invoke-static {p1}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    const-string v1, "baseband_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    invoke-static {p1}, Lcom/android/vendorsettings/DeviceInfoSettings;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    const-string v1, "device_feedback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    const-string v1, "system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 513
    const-string v1, "additional_system_update_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_6
    return-object v0
.end method
