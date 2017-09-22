.class Lcom/android/settings/notification/NotificationSettings$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajD:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 326
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->b(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->c(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/notification/NotificationSettings;->q(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->d(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->c(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/notification/NotificationSettings;->q(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    :cond_1
    return-void
.end method
