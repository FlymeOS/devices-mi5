.class public Lcom/android/settings/aI;
.super Ljava/lang/Object;
.source "CompatibilityUtils.java"


# static fields
.field private static EXTRA_APP_UID:Ljava/lang/String;

.field private static eS:Landroid/app/INotificationManager;

.field private static eT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/aI;->eS:Landroid/app/INotificationManager;

    .line 17
    const-string v0, "app_uid"

    sput-object v0, Lcom/android/settings/aI;->EXTRA_APP_UID:Ljava/lang/String;

    .line 18
    const-string v0, "high_priority_setting"

    sput-object v0, Lcom/android/settings/aI;->eT:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    :try_start_0
    sget-object v3, Lcom/android/settings/aI;->eS:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v3, Lcom/android/settings/aI;->eT:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    const-string v3, "app_packageName"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    sget-object v3, Lcom/android/settings/aI;->EXTRA_APP_UID:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 22
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    move v0, v1

    .line 30
    goto :goto_1
.end method

.method public static b(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_0
    sget-object v1, Lcom/android/settings/aI;->eS:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    const-string v2, "CompatibilityUtil"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
