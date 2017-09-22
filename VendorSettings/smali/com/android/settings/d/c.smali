.class public Lcom/android/vendorsettings/d/c;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private ahS:Landroid/preference/PreferenceCategory;

.field private ahT:Landroid/preference/PreferenceCategory;

.field private ahU:Landroid/preference/Preference;

.field private gO:Landroid/net/NetworkPolicyManager;

.field private hF:Lcom/android/vendorsettings/d/f;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/android/vendorsettings/d/d;

    invoke-direct {v0}, Lcom/android/vendorsettings/d/d;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/d/c;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/d/c;)Lcom/android/vendorsettings/d/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->hF:Lcom/android/vendorsettings/d/f;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/android/vendorsettings/d/e;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/vendorsettings/d/e;-><init>(Lcom/android/vendorsettings/d/c;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 125
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/d/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    return-object v2
.end method

.method private bH(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/c;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/d/c;->ahS:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->ahT:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 101
    invoke-static {p1}, Lcom/android/vendorsettings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 103
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/vendorsettings/d/c;->ahT:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/d/c;->b(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->ahT:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/vendorsettings/d/c;->ahU:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/vendorsettings/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/vendorsettings/d/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->gO:Landroid/net/NetworkPolicyManager;

    .line 79
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->je:Landroid/net/wifi/WifiManager;

    .line 81
    new-instance v0, Lcom/android/vendorsettings/d/f;

    iget-object v2, p0, Lcom/android/vendorsettings/d/c;->gO:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/d/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->hF:Lcom/android/vendorsettings/d/f;

    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/d/c;->hF:Lcom/android/vendorsettings/d/f;

    invoke-virtual {v0}, Lcom/android/vendorsettings/d/f;->read()V

    .line 84
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/d/c;->addPreferencesFromResource(I)V

    .line 85
    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/d/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->ahS:Landroid/preference/PreferenceCategory;

    .line 86
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/d/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->ahT:Landroid/preference/PreferenceCategory;

    .line 87
    const-string v0, "wifi_disabled"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/d/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/d/c;->ahU:Landroid/preference/Preference;

    .line 89
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/d/c;->bH(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x44

    return v0
.end method
