.class Lcom/android/settings/cloud/push/j;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "CompatChecker.java"


# instance fields
.field final synthetic Ug:Lcom/android/settings/cloud/push/h;

.field finished:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/cloud/push/h;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cloud/push/h;Lcom/android/settings/cloud/push/i;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/push/j;-><init>(Lcom/android/settings/cloud/push/h;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v0}, Lcom/android/settings/cloud/push/h;->a(Lcom/android/settings/cloud/push/h;)Lcom/android/settings/cloud/push/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v0}, Lcom/android/settings/cloud/push/h;->a(Lcom/android/settings/cloud/push/h;)Lcom/android/settings/cloud/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cloud/push/k;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v0}, Lcom/android/settings/cloud/push/h;->a(Lcom/android/settings/cloud/push/h;)Lcom/android/settings/cloud/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cloud/push/k;->oH()Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v0, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v0}, Lcom/android/settings/cloud/push/h;->a(Lcom/android/settings/cloud/push/h;)Lcom/android/settings/cloud/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cloud/push/k;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 52
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v0}, Lcom/android/settings/cloud/push/h;->b(Lcom/android/settings/cloud/push/h;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020125

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 58
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 59
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 60
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 61
    iget-object v2, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v2}, Lcom/android/settings/cloud/push/h;->b(Lcom/android/settings/cloud/push/h;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/cloud/push/j;->Ug:Lcom/android/settings/cloud/push/h;

    invoke-static {v5}, Lcom/android/settings/cloud/push/h;->b(Lcom/android/settings/cloud/push/h;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cloud/push/j;->finished:Z

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
