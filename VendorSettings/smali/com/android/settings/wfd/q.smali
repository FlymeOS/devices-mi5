.class Lcom/android/vendorsettings/wfd/q;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 478
    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/q;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I

    .line 480
    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/q;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 482
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->g(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/q;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->h(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;II)V

    .line 484
    :cond_0
    return-void
.end method
