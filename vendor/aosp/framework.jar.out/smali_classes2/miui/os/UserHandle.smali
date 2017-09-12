.class public Lmiui/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final myUserId()I
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method
