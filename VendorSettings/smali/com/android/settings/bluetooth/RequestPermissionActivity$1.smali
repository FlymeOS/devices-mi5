.class Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# instance fields
.field final synthetic Sp:Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity$1;->Sp:Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 84
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity$1;->Sp:Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;->a(Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity$1;->Sp:Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;->b(Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity$1;->Sp:Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;->c(Lcom/android/vendorsettings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0
.end method
