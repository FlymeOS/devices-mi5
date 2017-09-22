.class Lcom/android/vendorsettings/wifi/openwifi/c;
.super Ljava/lang/Object;
.source "FreeWifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

.field final synthetic aFx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    iput-object p2, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    const v1, 0x7f0c0fbf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    const-class v2, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v1, "wifi_provider"

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "wifi_config"

    iget-object v2, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-static {v2}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->a(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->b(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;)V

    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/c;->aFw:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiDialog;->finish()V

    .line 51
    return-void
.end method
