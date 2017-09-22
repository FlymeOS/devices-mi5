.class Lcom/android/vendorsettings/users/UserSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSettings.java"


# instance fields
.field final synthetic auA:Lcom/android/vendorsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserSettings$2;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings$2;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/users/UserSettings;->b(Lcom/android/vendorsettings/users/UserSettings;I)I

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings$2;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/users/UserSettings;->c(Lcom/android/vendorsettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    return-void

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 175
    if-eq v0, v2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings$2;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/users/UserSettings;->b(Lcom/android/vendorsettings/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method
