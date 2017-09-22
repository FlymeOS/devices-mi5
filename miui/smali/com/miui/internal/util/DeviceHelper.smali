.class public Lcom/miui/internal/util/DeviceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FEATURE_WHOLE_ANIM:Z

.field public static final HAS_CUST_PARTITION:Z

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CTA_BUILD:Z

.field public static final IS_CTS_BUILD:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_OLED:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field private static final iS:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    const-string v0, "cancro"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_MIFOUR:Z

    .line 18
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_alpha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_ALPHA_BUILD:Z

    .line 21
    const-string v0, "1"

    const-string v3, "ro.miui.cta"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_CTA_BUILD:Z

    .line 24
    const-string v3, "persist.sys.miui_optimization"

    const-string v0, "1"

    const-string v4, "ro.miui.cts"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_CTS_BUILD:Z

    .line 28
    const-string v0, "ro.sys.ft_whole_anim"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    .line 31
    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    .line 40
    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->Z()Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    .line 46
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_DEVELOPMENT_VERSION:Z

    .line 50
    const-string v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_STABLE_VERSION:Z

    .line 56
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    sput-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    .line 81
    const-string v0, "ro.miui.has_cust_partition"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->HAS_CUST_PARTITION:Z

    .line 84
    const-string v0, "oled"

    const-string v1, "ro.display.type"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    return-void

    :cond_0
    move v0, v2

    .line 15
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 24
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    .line 46
    goto :goto_3

    :cond_4
    move v0, v2

    .line 50
    goto :goto_4

    :cond_5
    move v1, v2

    .line 56
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Z()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
