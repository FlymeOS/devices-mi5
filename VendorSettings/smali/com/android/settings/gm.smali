.class public Lcom/android/vendorsettings/gm;
.super Landroid/app/Service;
.source "ProvisionObserverService.java"


# static fields
.field private static final wc:Landroid/net/Uri;


# instance fields
.field private wd:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/gm;->wc:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/android/vendorsettings/gn;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/gn;-><init>(Lcom/android/vendorsettings/gm;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/gm;->wd:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/gm;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/vendorsettings/gm;->gz()V

    return-void
.end method

.method private gz()V
    .locals 6

    .prologue
    const v5, 0x7f0c10ea

    const/4 v4, 0x0

    .line 30
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 32
    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 33
    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/gm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 34
    const v1, 0x7f0c10eb

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/gm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string v2, "com.android.settings.Settings$EdgeModeSettingsActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/high16 v2, 0x10000000

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 43
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 44
    const/16 v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 45
    iget-object v0, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;

    .line 46
    iget-object v0, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0, v4}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    .line 47
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/gm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 48
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/android/vendorsettings/gm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/vendorsettings/gm;->wc:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vendorsettings/gm;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/gm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gm;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    return-void
.end method
