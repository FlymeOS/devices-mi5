.class public Lcom/android/server/ExtraAlarmManagerService;
.super Ljava/lang/Object;
.source "ExtraAlarmManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtraAlarmManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recalculateWindowLength(Landroid/content/Context;IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 24
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 37
    .end local p4    # "windowLength":J
    :cond_0
    :goto_0
    return-wide p4

    .line 27
    .restart local p4    # "windowLength":J
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 28
    .local v1, "uid":I
    const/16 v4, 0x2710

    if-lt v1, v4, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 32
    .local v2, "id":J
    invoke-static {p0, v1}, Landroid/miui/AppOpsUtils;->getExactAlarm(Landroid/content/Context;I)I

    move-result v0

    .line 33
    .local v0, "alarmMode":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 37
    const-wide/16 p4, -0x1

    goto :goto_0
.end method
