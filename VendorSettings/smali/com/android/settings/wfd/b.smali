.class Lcom/android/vendorsettings/wfd/b;
.super Ljava/lang/Object;
.source "MiuiWifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awj:Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/b;->awj:Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/b;->awj:Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/b;->awj:Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;Z)V

    .line 68
    return-void
.end method
