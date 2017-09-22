.class public Lcom/miui/internal/server/CoreJobReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/CoreJobReceiver$a;
    }
.end annotation


# static fields
.field private static final he:Ljava/lang/String; = "jobscheduler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 46
    invoke-static {p0}, Lcom/miui/internal/server/CoreJobReceiver;->i(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 47
    return-void
.end method

.method private static i(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/miui/internal/server/CoreJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, v4, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/miui/internal/server/CoreJobReceiver$a;->hf:Z

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/miui/internal/server/CoreJobReceiver;->h(Landroid/content/Context;)V

    goto :goto_0
.end method
