.class Lcom/android/vendorsettings/wifi/ax;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aEc:Lcom/android/vendorsettings/wifi/aw;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/aw;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/ax;->aEc:Lcom/android/vendorsettings/wifi/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ax;->aEc:Lcom/android/vendorsettings/wifi/aw;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/aw;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ax;->aEc:Lcom/android/vendorsettings/wifi/aw;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/aw;->yw()V

    .line 70
    :cond_0
    return-void
.end method
