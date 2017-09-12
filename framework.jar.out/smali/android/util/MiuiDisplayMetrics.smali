.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_NXHGITH:I = 0x1b8

.field public static final PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density_v2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactoryDeviceDensity()I
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getNxhdpiDensity()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x1b8

    return v0
.end method

.method public static setOverlayDensity(I)Z
    .locals 10
    .param p0, "overlayDensity"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v1

    .line 44
    .local v1, "factoryDensity":I
    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v3, v4

    int-to-float v4, p0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    int-to-double v4, p0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 46
    .local v0, "currentDensity":I
    if-eq v0, p0, :cond_0

    .line 47
    const-string/jumbo v3, "persist.miui.density_v2"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v3, "persist.miui.density_v2"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p0, v3, :cond_0

    const/4 v2, 0x1

    .line 51
    .end local v0    # "currentDensity":I
    :cond_0
    return v2
.end method
