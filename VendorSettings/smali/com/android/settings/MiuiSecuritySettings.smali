.class public Lcom/android/settings/MiuiSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private dr:Lcom/android/settings/aH;

.field private ds:Landroid/app/admin/DevicePolicyManager;

.field private sq:Landroid/preference/ListPreference;

.field private sr:Landroid/preference/CheckBoxPreference;

.field private ss:Landroid/preference/CheckBoxPreference;

.field private st:Landroid/preference/CheckBoxPreference;

.field private su:Landroid/preference/CheckBoxPreference;

.field private sv:Z

.field private sw:Z

.field private sx:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private E(Z)V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 212
    return-void
.end method

.method private I(Z)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecuritySettings;->E(Z)V

    .line 219
    return-void
.end method

.method private J(Z)V
    .locals 2

    .prologue
    .line 273
    if-eqz p1, :cond_5

    .line 274
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .line 275
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sx:Z

    if-nez v1, :cond_1

    .line 276
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-eq v1, v0, :cond_2

    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_3

    .line 279
    :cond_2
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 281
    :cond_3
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_4

    .line 282
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 284
    :cond_4
    sget-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    if-ne v1, v0, :cond_0

    .line 285
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 289
    :cond_5
    const-string v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private K(Z)V
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_wake_screen"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L(Z)V
    .locals 3

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 332
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v0

    .line 334
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 335
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 336
    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    move v1, v0

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    aget-object v0, v2, v1

    return-object v0
.end method

.method private e(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 295
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private fL()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v0}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dB;->d(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 223
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fM()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 302
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fO()V

    .line 305
    return-void
.end method

.method private fN()V
    .locals 8

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 310
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    .line 312
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 314
    const-string v0, ""

    .line 324
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 325
    const v0, 0x7f0c0d79

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    .line 316
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_3

    .line 318
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0c03d5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/preference/ListPreference;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fO()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x7ffffffe

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 347
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 348
    :goto_0
    const-string v7, "oled"

    const-string v8, "ro.display.type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 349
    if-eqz v7, :cond_9

    .line 350
    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    move-wide v0, v4

    :goto_1
    move-wide v4, v0

    .line 352
    :goto_2
    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 386
    :goto_3
    return-void

    :cond_0
    move-wide v0, v2

    .line 347
    goto :goto_0

    .line 350
    :cond_1
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 356
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 359
    :goto_4
    array-length v8, v2

    if-ge v0, v8, :cond_4

    .line 360
    aget-object v8, v2, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 361
    cmp-long v8, v8, v4

    if-gtz v8, :cond_3

    .line 362
    aget-object v8, v1, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    aget-object v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 366
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v2

    if-eq v0, v1, :cond_6

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 368
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 372
    int-to-long v8, v1

    cmp-long v0, v8, v4

    if-gtz v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 374
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 378
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-wide v4, v0

    goto/16 :goto_2
.end method

.method private fP()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumekey_wake_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private fQ()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volumekey_launch_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    .line 72
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    .line 73
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 79
    const v0, 0x7f0400c9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 391
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fN()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v1}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->E(Z)V

    .line 269
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 233
    :cond_1
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Z

    if-eqz v0, :cond_2

    const v5, 0x7f0c10f8

    .line 236
    :goto_1
    const-string v2, "com.android.settings.MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment"

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 234
    :cond_2
    const v5, 0x7f0c10f9

    goto :goto_1

    .line 238
    :cond_3
    const-string v2, "lockenabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "power_button_instantly_locks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiSecuritySettings;->e(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/dB;->c(Lcom/android/internal/widget/LockPatternUtils;Z)V

    goto :goto_0

    .line 243
    :cond_4
    const-string v1, "bluetooth_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    const-string v2, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const v5, 0x7f0c101c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 246
    :cond_5
    const-string v1, "smartcover_sensitive_hall_sensor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p2

    .line 247
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 248
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->J(Z)V

    goto :goto_0

    .line 249
    :cond_6
    const-string v1, "owner_info_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 251
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "com.android.settings.OwnerInfoSettings"

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 253
    :cond_7
    const-string v1, "keyguard_shortcut_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    const-string v2, "com.android.settings.KeyguardShortcutSettings"

    const v5, 0x7f0c11bb

    move-object v0, p0

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 256
    :cond_8
    const-string v1, "wakeup_for_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup_for_keyguard_notification"

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 260
    :cond_9
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    .line 261
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->K(Z)V

    goto/16 :goto_0

    .line 262
    :cond_a
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_b

    .line 263
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->L(Z)V

    goto/16 :goto_0

    .line 264
    :cond_b
    const-string v1, "privacy_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v2, "com.android.settings.privacypassword.TransparentHelper$TransparentHelperFragment"

    const v5, 0x7f0c11f2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiSecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 95
    :cond_0
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 97
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v0, "screen_timeout"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sq:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fM()V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fN()V

    .line 110
    :cond_1
    const-string v0, "screen_on_proximity_sensor"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    const-string v1, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 113
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v0}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/dB;->k(Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_3

    .line 133
    :cond_3
    new-instance v0, Lcom/android/settings/cZ;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cZ;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/cZ;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Z

    .line 135
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 137
    const-string v0, "security_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 138
    const-string v1, "bluetooth_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 139
    new-instance v6, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_9

    .line 141
    const-string v1, "security_second_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 142
    if-eqz v1, :cond_4

    .line 143
    if-eqz v4, :cond_4

    .line 144
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_4
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fL()Z

    move-result v1

    if-nez v1, :cond_d

    .line 163
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 179
    :cond_5
    :goto_2
    const-string v1, "smartcover_sensitive_hall_sensor"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 181
    const-string v4, "support_hall_sensor"

    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sw:Z

    .line 182
    const-string v4, "support_small_win_cover"

    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sx:Z

    .line 183
    iget-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sw:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/MiuiSecuritySettings;->sx:Z

    if-eqz v4, :cond_f

    .line 184
    :cond_6
    const-string v0, "persist.sys.smartcover_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 186
    if-eqz v0, :cond_7

    move v3, v2

    .line 187
    :cond_7
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiSecuritySettings;->J(Z)V

    .line 193
    :goto_3
    const-string v0, "wakeup_for_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wakeup_for_keyguard_notification"

    invoke-static {v1, v3, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    .line 201
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->st:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fP()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v0, "pref_volume_launch_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->su:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    return-void

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enable_screen_on_proximity_sensor"

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11090013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 149
    :cond_9
    if-eqz v4, :cond_a

    .line 150
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecuritySettings;->sv:Z

    if-eqz v1, :cond_b

    const v1, 0x7f0c10f8

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/MiuiSecuritySettings;->fL()Z

    move-result v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    invoke-virtual {v6}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 156
    const v1, 0x7f0c101e

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 150
    :cond_b
    const v1, 0x7f0c10f9

    goto :goto_4

    .line 158
    :cond_c
    const v1, 0x7f0c101d

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 167
    :cond_d
    iget-object v1, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "show_lock_before_unlock"

    sget-boolean v5, Landroid/provider/MiuiSettings$System;->SHOW_LOCK_BEFORE_UNLOCK_DEFAULT:Z

    invoke-static {v1, v4, v5}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    iget-object v4, p0, Lcom/android/settings/MiuiSecuritySettings;->ss:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    if-nez v1, :cond_5

    .line 174
    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiSecuritySettings;->I(Z)V

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto :goto_5

    .line 190
    :cond_f
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method
