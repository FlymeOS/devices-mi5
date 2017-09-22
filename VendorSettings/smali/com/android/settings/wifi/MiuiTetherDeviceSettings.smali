.class public Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherDeviceSettings.java"


# instance fields
.field private aAB:Ljava/util/List;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/wifi/o;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/o;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aAB:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aAB:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->xg()V

    return-void
.end method

.method private xg()V
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aAB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/n;

    .line 86
    new-instance v2, Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/wifi/n;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/wifi/n;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/wifi/n;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fy;->p(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->aAB:Ljava/util/List;

    .line 50
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->addPreferencesFromResource(I)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->xg()V

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fy;->dv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f04017c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method
