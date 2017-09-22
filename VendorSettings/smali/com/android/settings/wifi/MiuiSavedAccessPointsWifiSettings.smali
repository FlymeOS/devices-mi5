.class public Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "MiuiSavedAccessPointsWifiSettings.java"


# instance fields
.field private aAw:Lcom/android/b/e/a;

.field private aAx:Lmiui/widget/EditableListViewWrapper;

.field private aAy:Ljava/util/List;

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)Lcom/android/b/e/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/b/e/a;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->bC(Z)V

    return-void
.end method

.method private b(Lcom/android/b/e/a;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wifi/ak;->i(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->kW()V

    return-void
.end method

.method private bC(Z)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/S;

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/wifi/S;->bF(Z)V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method private c(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 84
    new-instance v3, Lcom/android/vendorsettings/wifi/S;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/vendorsettings/wifi/S;-><init>(Lcom/android/b/e/a;Landroid/content/Context;)V

    .line 86
    iget-object v0, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/vendorsettings/wifi/S;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/wifi/k;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/k;-><init>(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-object v1
.end method

.method static synthetic c(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->xe()V

    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->xf()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    return-object v0
.end method

.method private kW()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/android/b/e/c;->a(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v0, "MiuiSavedAccessPointsWifiSettings"

    const-string v1, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->c(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/S;

    .line 76
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->xd()V

    goto :goto_0
.end method

.method private xd()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAx:Lmiui/widget/EditableListViewWrapper;

    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAx:Lmiui/widget/EditableListViewWrapper;

    new-instance v1, Lcom/android/vendorsettings/wifi/m;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/wifi/m;-><init>(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAx:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method

.method private xe()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/S;

    .line 142
    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/S;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/S;->wP()Lcom/android/b/e/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/b/e/a;)V

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method private xf()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAx:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v1, v2

    .line 150
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 151
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/S;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/vendorsettings/wifi/S;->bG(Z)V

    .line 150
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/wifi/S;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/wifi/S;->bG(Z)V

    goto :goto_1

    .line 157
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 50
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 51
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 112
    instance-of v1, p2, Lcom/android/vendorsettings/wifi/S;

    if-eqz v1, :cond_0

    .line 113
    check-cast p2, Lcom/android/vendorsettings/wifi/S;

    .line 114
    invoke-virtual {p2}, Lcom/android/vendorsettings/wifi/S;->wP()Lcom/android/b/e/a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0dde

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0ddf

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->aAw:Lcom/android/b/e/a;

    iget-object v5, v5, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02f7

    new-instance v3, Lcom/android/vendorsettings/wifi/l;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/wifi/l;-><init>(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0834

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;->kW()V

    .line 57
    return-void
.end method
