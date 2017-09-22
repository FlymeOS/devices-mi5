.class Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ajR:Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;

.field final synthetic ajS:Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;->ajS:Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;->ajR:Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;->ajS:Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v0, v0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter;->ajO:Lcom/android/vendorsettings/notification/NotificationStation;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationStation$NotificationHistoryAdapter$1;->ajR:Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/vendorsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/notification/NotificationStation;->a(Lcom/android/vendorsettings/notification/NotificationStation;Ljava/lang/String;)V

    .line 336
    return-void
.end method
