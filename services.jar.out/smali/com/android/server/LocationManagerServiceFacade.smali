.class public Lcom/android/server/LocationManagerServiceFacade;
.super Ljava/lang/Object;
.source "LocationManagerServiceFacade.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z
    .locals 1
    .param p0, "sLocationManagerService"    # Lcom/android/server/LocationManagerService;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .prologue
    .line 7
    const/4 v0, 0x0

    .line 8
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v0

    .line 11
    :cond_0
    return v0
.end method
