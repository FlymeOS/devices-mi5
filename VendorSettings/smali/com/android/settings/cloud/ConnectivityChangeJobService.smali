.class public Lcom/android/settings/cloud/ConnectivityChangeJobService;
.super Landroid/app/job/JobService;
.source "ConnectivityChangeJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SR:J

.field SS:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private a(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/cloud/CloudSettingsService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "command"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x8000000

    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 90
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    sget-object v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->TAG:Ljava/lang/String;

    const-string v1, "request appcontrol list update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static aJ(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 101
    sget-object v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->TAG:Ljava/lang/String;

    const-string v1, "setSchedule:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 104
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/settings/cloud/ConnectivityChangeJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 107
    return-void
.end method

.method private ol()Z
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->SR:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 58
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->SR:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 60
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private om()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/settings/cloud/a/c;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->SS:Landroid/app/AlarmManager;

    .line 30
    const-string v0, "last_pending_intent_time"

    invoke-static {v0, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->SR:J

    .line 31
    invoke-direct {p0}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->ol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 41
    :goto_0
    return v4

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->om()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->SS:Landroid/app/AlarmManager;

    invoke-direct {p0, v0, p0}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->a(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 38
    const-string v0, "last_pending_intent_time"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p0}, Lcom/android/settings/cloud/a/c;->a(Ljava/lang/String;JLandroid/content/Context;)V

    .line 40
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/cloud/ConnectivityChangeJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/cloud/ConnectivityChangeJobService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    return v0
.end method
