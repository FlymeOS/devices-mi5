.class public Lmiui/os/MiuiEnvironment;
.super Ljava/lang/Object;
.source "MiuiEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
