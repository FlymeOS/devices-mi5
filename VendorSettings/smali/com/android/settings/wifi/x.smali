.class Lcom/android/settings/wifi/x;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aAM:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/wifi/x;->aAM:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 199
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/x;->aAM:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->c(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->yn()Lcom/android/settings/wifi/ag;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/android/settings/wifi/x;->aAM:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ag;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 203
    :cond_0
    return-void
.end method
