.class public Lcom/android/server/am/JobServiceContextInjector;
.super Ljava/lang/Object;
.source "JobServiceContextInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p0, "jobContext"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 25
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x5

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
