.class Lcom/android/vendorsettings/wifi/openwifi/f;
.super Landroid/os/AsyncTask;
.source "FreeWifiLogin.java"


# instance fields
.field final synthetic aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;)Lcom/android/vendorsettings/wifi/MiuiWifiService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;)Lcom/android/vendorsettings/wifi/MiuiWifiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->xx()I

    move-result v0

    .line 193
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/wifi/openwifi/f;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;)Lcom/android/vendorsettings/wifi/MiuiWifiService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    const v1, 0x7f0c0fc4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/openwifi/f;->aFN:Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;->b(Lcom/android/vendorsettings/wifi/openwifi/FreeWifiLogin;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/wifi/openwifi/f;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
