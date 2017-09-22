.class public Lcom/android/vendorsettings/nfc/PaymentSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PaymentSettings.java"


# instance fields
.field private aik:Lcom/android/vendorsettings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/vendorsettings/nfc/PaymentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    :try_start_0
    new-instance v0, Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 67
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "PaymentSettings"

    const-string v2, "Nfc not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 111
    const v0, 0x7f0c098e

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/vendorsettings/nfc/HowItWorks;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 114
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->onResume()V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/vendorsettings/nfc/PaymentBackend;->rX()Ljava/util/List;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 86
    new-instance v1, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/vendorsettings/nfc/PaymentBackend;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    new-instance v1, Lcom/android/vendorsettings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/nfc/PaymentSettings;->aik:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-direct {v1, v2, v3}, Lcom/android/vendorsettings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/vendorsettings/nfc/PaymentBackend;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x46

    return v0
.end method
