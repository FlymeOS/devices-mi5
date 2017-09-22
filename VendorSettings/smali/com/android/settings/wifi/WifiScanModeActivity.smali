.class public Lcom/android/vendorsettings/wifi/WifiScanModeActivity;
.super Landroid/app/Activity;
.source "WifiScanModeActivity.java"


# instance fields
.field private aDD:Landroid/app/DialogFragment;

.field private aDE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/WifiScanModeActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->ys()V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/wifi/WifiScanModeActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->yr()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    .line 76
    :cond_0
    return-void
.end method

.method private nY()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;->ck(Ljava/lang/String;)Lcom/android/vendorsettings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDD:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method private yr()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->finish()V

    .line 83
    return-void
.end method

.method private ys()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->finish()V

    .line 88
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    if-nez p1, :cond_1

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->nY()V

    .line 62
    :goto_1
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->finish()V

    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->dismissDialog()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->nY()V

    .line 105
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "app"

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/WifiScanModeActivity;->aDE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
