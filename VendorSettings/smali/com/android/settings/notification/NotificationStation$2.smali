.class Lcom/android/vendorsettings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# instance fields
.field final synthetic ajO:Lcom/android/vendorsettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 88
    const-string v0, "onNotificationPosted: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vendorsettings/notification/NotificationStation;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/NotificationStation;->b(Lcom/android/vendorsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/NotificationStation;->b(Lcom/android/vendorsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/NotificationStation;->b(Lcom/android/vendorsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationStation$2;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/NotificationStation;->b(Lcom/android/vendorsettings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
