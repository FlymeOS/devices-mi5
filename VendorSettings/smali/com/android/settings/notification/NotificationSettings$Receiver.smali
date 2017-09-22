.class Lcom/android/settings/notification/NotificationSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettings.java"


# instance fields
.field final synthetic ajD:Lcom/android/settings/notification/NotificationSettings;

.field private mRegistered:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public aX(Z)V
    .locals 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 637
    :cond_0
    if-eqz p1, :cond_1

    .line 638
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->c(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->c(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$H;->sendEmptyMessage(I)Z

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$Receiver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
