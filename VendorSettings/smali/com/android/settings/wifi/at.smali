.class Lcom/android/vendorsettings/wifi/at;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field final synthetic aDW:Lcom/android/vendorsettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/at;->aDW:Lcom/android/vendorsettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/at;->aDW:Lcom/android/vendorsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    const v1, 0x7f0c0335

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
