.class public Lmiui/util/PreinstallAppUtils;
.super Ljava/lang/Object;
.source "PreinstallAppUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
