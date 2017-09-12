.class public Landroid/app/AppOpsManagerInjector;
.super Ljava/lang/Object;
.source "AppOpsManagerInjector.java"


# static fields
.field private static sAutoStartRestrictions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    .line 14
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.calculator2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.android.htmlviewer"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.mipub"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.weather2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.klo.bugreport"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.miui.varcodescanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.pass"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.pricecheck"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string v1, "com.cleanmaster.sdk"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoStartRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
