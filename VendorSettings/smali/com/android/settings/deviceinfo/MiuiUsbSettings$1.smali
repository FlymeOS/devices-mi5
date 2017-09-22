.class Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUsbSettings.java"


# instance fields
.field final synthetic VK:Lcom/android/settings/deviceinfo/MiuiUsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->VK:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->VK:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->finish()V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->VK:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;->VK:Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
