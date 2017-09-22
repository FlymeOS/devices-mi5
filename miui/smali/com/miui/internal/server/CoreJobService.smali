.class public Lcom/miui/internal/server/CoreJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field public static final JOB_ID_UPDATE_DATA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private N()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.internal.action.DATA_JOB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/miui/internal/server/DataUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v2

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/miui/internal/server/CoreJobService;->N()V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
