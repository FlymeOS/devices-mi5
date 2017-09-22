.class Lcom/android/vendorsettings/wifi/aM;
.super Ljava/lang/Object;
.source "WifiTipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aEC:Lcom/android/vendorsettings/wifi/WifiTipActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiTipActivity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aM;->aEC:Lcom/android/vendorsettings/wifi/WifiTipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aM;->aEC:Lcom/android/vendorsettings/wifi/WifiTipActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WifiTipActivity;->a(Lcom/android/vendorsettings/wifi/WifiTipActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aM;->aEC:Lcom/android/vendorsettings/wifi/WifiTipActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/wifi/WifiTipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 47
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 49
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aM;->aEC:Lcom/android/vendorsettings/wifi/WifiTipActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WifiTipActivity;->finish()V

    .line 51
    return-void
.end method
