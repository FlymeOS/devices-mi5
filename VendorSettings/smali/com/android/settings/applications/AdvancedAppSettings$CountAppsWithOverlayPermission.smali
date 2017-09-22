.class Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;
.super Landroid/os/AsyncTask;
.source "AdvancedAppSettings.java"


# instance fields
.field final synthetic Fd:Lcom/android/vendorsettings/applications/AdvancedAppSettings;

.field Fe:I


# virtual methods
.method protected varargs a([Lcom/android/vendorsettings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 150
    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->jS()I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->Fe:I

    .line 152
    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->jT()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, [Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->a([Lcom/android/vendorsettings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->Fd:Lcom/android/vendorsettings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AdvancedAppSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->Fd:Lcom/android/vendorsettings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/AdvancedAppSettings;->b(Lcom/android/vendorsettings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->Fd:Lcom/android/vendorsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0b76

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->Fe:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
