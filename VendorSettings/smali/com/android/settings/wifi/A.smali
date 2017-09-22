.class Lcom/android/vendorsettings/wifi/A;
.super Landroid/os/AsyncTask;
.source "MiuiWifiDetailFragment.java"


# instance fields
.field final synthetic aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/A;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/wifi/A;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/A;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/A;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/A;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    iget-object v1, v1, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v1}, Lcom/android/vendorsettings/wifi/openwifi/l;->xx()I

    move-result v1

    iput v1, v0, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->aAI:I

    .line 361
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 355
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/wifi/A;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/A;->aAM:Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;->e(Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;)V

    .line 367
    return-void
.end method
