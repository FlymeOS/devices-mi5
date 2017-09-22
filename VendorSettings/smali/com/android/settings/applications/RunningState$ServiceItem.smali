.class Lcom/android/settings/applications/RunningState$ServiceItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field NG:Lcom/android/settings/applications/RunningState$MergedItem;

.field Ph:Landroid/app/ActivityManager$RunningServiceInfo;

.field Pi:Landroid/content/pm/ServiceInfo;

.field Pj:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 386
    return-void
.end method
