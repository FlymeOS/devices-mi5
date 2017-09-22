.class public Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;
.super Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# instance fields
.field private Mr:Landroid/preference/PreferenceGroup;

.field private afC:Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;

.field private afD:I

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    .line 415
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static cl(I)Z
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cm(I)Z
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rd()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    const v1, 0x7f0c0705

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 186
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    return-void
.end method

.method private static z(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 204
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 206
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    .line 208
    :goto_0
    if-ge v5, v8, :cond_9

    .line 209
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    if-lez v1, :cond_8

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->cl(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    invoke-static {v3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 221
    :cond_0
    invoke-static {v1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->cm(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mediaserver"

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    const/16 v1, 0x3e8

    .line 229
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 231
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/vendorsettings/fuelgauge/FakeUid;

    invoke-direct {v9, v1}, Lcom/android/vendorsettings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v2, v4, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 233
    invoke-virtual {v2, v0}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 234
    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 235
    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v0, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 239
    :goto_1
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 240
    if-gez v0, :cond_3

    .line 242
    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 246
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 247
    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, v2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 252
    :cond_4
    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    .line 254
    :goto_3
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    .line 256
    :goto_4
    if-lez v4, :cond_2

    .line 257
    add-int v9, v1, v4

    new-array v9, v9, [Ljava/lang/String;

    .line 258
    if-lez v1, :cond_5

    .line 259
    iget-object v10, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v10, v3, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_5
    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v2, v3, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iput-object v9, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v1, v3

    .line 252
    goto :goto_3

    :cond_7
    move v4, v3

    .line 254
    goto :goto_4

    .line 268
    :cond_8
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 273
    :goto_5
    if-ge v3, v0, :cond_a

    .line 274
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 278
    :cond_a
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary$1;-><init>()V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    return-object v7

    :cond_b
    move-object v2, v0

    goto :goto_1
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f0c09b6

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 93
    const-string v0, "battery_history"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afC:Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;

    .line 94
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const/4 v0, 0x3

    const v1, 0x7f0c0766

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 144
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 146
    const/4 v0, 0x4

    const v1, 0x7f0c0b36

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 147
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 118
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->qO()V

    .line 121
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 160
    :pswitch_1
    iget v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    goto :goto_1

    .line 168
    :pswitch_2
    const-class v1, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0766

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v1, "classname"

    const-class v3, Lcom/android/vendorsettings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-class v1, Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b36

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->qN()V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    invoke-super {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onPause()V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    .line 125
    instance-of v0, p2, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    move-object v0, p2

    .line 128
    check-cast v0, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;

    .line 129
    invoke-virtual {v0}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->qX()Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    iget v3, p0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/vendorsettings/fuelgauge/PowerUsageDetail;->a(Lcom/android/vendorsettings/hn;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/vendorsettings/fuelgauge/BatteryEntry;Z)V

    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 106
    return-void
.end method

.method protected refreshStats()V
    .locals 18

    .prologue
    .line 288
    invoke-super/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afC:Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->a(Lcom/android/vendorsettings/fuelgauge/BatteryHistoryPreference;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 292
    const/4 v4, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    .line 296
    const-string v5, "screen.full"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 298
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v8, 0x1010429

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 302
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v2, v6, v10

    if-gez v2, :cond_1

    move v2, v4

    .line 375
    :goto_0
    if-nez v2, :cond_0

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->rd()V

    .line 379
    :cond_0
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->qM()V

    .line 380
    return-void

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 306
    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->afD:I

    invoke-virtual {v3, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    move v3, v2

    .line 308
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 309
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_f

    .line 310
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 311
    iget-wide v10, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v12, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_4

    move v2, v4

    .line 309
    :cond_2
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_2

    .line 306
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 314
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v10

    .line 315
    iget-wide v12, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double v10, v12, v10

    int-to-double v12, v3

    mul-double/2addr v10, v12

    .line 317
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v10

    double-to-int v9, v12

    const/4 v12, 0x1

    if-ge v9, v12, :cond_5

    move v2, v4

    .line 318
    goto :goto_3

    .line 320
    :cond_5
    iget-object v9, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v12, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v9, v12, :cond_8

    .line 323
    iget-wide v12, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v14, v14, v16

    cmpg-double v9, v12, v14

    if-gez v9, :cond_6

    move v2, v4

    .line 324
    goto :goto_3

    .line 326
    :cond_6
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_7

    move v2, v4

    .line 327
    goto :goto_3

    .line 329
    :cond_7
    const-string v9, "user"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v2, v4

    .line 330
    goto :goto_3

    .line 333
    :cond_8
    iget-object v9, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v12, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v9, v12, :cond_b

    .line 336
    iget-wide v12, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    cmpg-double v9, v12, v14

    if-gez v9, :cond_9

    move v2, v4

    .line 337
    goto :goto_3

    .line 339
    :cond_9
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpg-double v9, v10, v12

    if-gez v9, :cond_a

    move v2, v4

    .line 340
    goto :goto_3

    .line 342
    :cond_a
    const-string v9, "user"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v2, v4

    .line 343
    goto :goto_3

    .line 346
    :cond_b
    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {v4, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 347
    new-instance v9, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aN:Landroid/os/UserManager;

    invoke-direct {v9, v12, v13, v14, v2}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aN:Landroid/os/UserManager;

    invoke-virtual {v9}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aN:Landroid/os/UserManager;

    invoke-virtual {v9}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 352
    new-instance v13, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14, v12, v4, v9}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/vendorsettings/fuelgauge/BatteryEntry;)V

    .line 355
    iget-wide v14, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->aeK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v16

    div-double v14, v14, v16

    .line 357
    iput-wide v10, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 358
    invoke-virtual {v9}, Lcom/android/vendorsettings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v13, v4}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 360
    invoke-virtual {v13, v14, v15, v10, v11}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->a(DD)V

    .line 361
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_c

    .line 362
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 364
    :cond_c
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v9, :cond_d

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v2, v4, :cond_e

    .line 366
    invoke-virtual {v13, v8}, Lcom/android/vendorsettings/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 368
    :cond_e
    const/4 v2, 0x1

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/fuelgauge/PowerUsageSummary;->Mr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/16 v9, 0xb

    if-le v4, v9, :cond_2

    goto/16 :goto_0

    :cond_f
    move v2, v4

    goto/16 :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x36

    return v0
.end method
