.class public Lmiui/ddm/DdmHandleAppName;
.super Ljava/lang/Object;
.source "DdmHandleAppName.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
