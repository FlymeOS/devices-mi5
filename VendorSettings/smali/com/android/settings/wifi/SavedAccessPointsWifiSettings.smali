.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private aAw:Lcom/android/b/e/a;

.field private aBF:Lcom/android/settings/wifi/am;

.field private aBG:Lcom/android/b/e/a;

.field private aBH:Landroid/os/Bundle;

.field private aBI:Lcom/android/settings/wifi/c;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/android/settings/wifi/U;

    invoke-direct {v0}, Lcom/android/settings/wifi/U;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/android/settings/wifi/a;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/a;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 138
    return-void
.end method

.method private iW()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 102
    invoke-static {v3, v8, v0, v8}, Lcom/android/b/e/c;->a(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v4

    .line 104
    new-instance v1, Lcom/android/settings/wifi/T;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/T;-><init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    .line 116
    :goto_0
    if-ge v1, v5, :cond_0

    .line 117
    new-instance v6, Lcom/android/settings/wifi/a;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    iget-object v7, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBI:Lcom/android/settings/wifi/c;

    invoke-direct {v6, v0, v3, v7, v8}, Lcom/android/settings/wifi/a;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/settings/wifi/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v0, v8, :cond_1

    .line 124
    const-string v0, "SavedAccessPointsWifiSettings"

    const-string v1, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    .line 96
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    .line 184
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 76
    new-instance v0, Lcom/android/settings/wifi/c;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/c;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBI:Lcom/android/settings/wifi/c;

    .line 77
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 154
    new-instance v0, Lcom/android/settings/wifi/am;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    const/4 v6, 0x1

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/am;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 188
    instance-of v0, p2, Lcom/android/settings/wifi/a;

    if-eqz v0, :cond_0

    .line 189
    check-cast p2, Lcom/android/settings/wifi/a;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/a;Z)V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->iW()V

    .line 83
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBG:Lcom/android/b/e/a;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/b/e/a;->k(Landroid/os/Bundle;)V

    .line 172
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->aBH:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x6a

    return v0
.end method
