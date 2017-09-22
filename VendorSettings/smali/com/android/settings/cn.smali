.class Lcom/android/vendorsettings/cn;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminSettings.java"


# instance fields
.field final synthetic lm:Lcom/android/vendorsettings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DeviceAdminSettings;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/vendorsettings/cn;->lm:Lcom/android/vendorsettings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 76
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/cn;->lm:Lcom/android/vendorsettings/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->dr()V

    .line 80
    :cond_0
    return-void
.end method
