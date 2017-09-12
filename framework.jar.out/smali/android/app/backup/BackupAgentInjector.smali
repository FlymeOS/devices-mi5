.class Landroid/app/backup/BackupAgentInjector;
.super Ljava/lang/Object;
.source "BackupAgentInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldSkip(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 9
    invoke-static {p0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
