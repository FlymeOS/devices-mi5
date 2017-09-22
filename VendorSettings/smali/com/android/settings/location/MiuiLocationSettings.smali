.class public Lcom/android/settings/location/MiuiLocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private Cn:Z

.field private agZ:Lcom/android/settings/location/RadioButtonPreference;

.field private aha:Lcom/android/settings/location/RadioButtonPreference;

.field private ahb:Lcom/android/settings/location/RadioButtonPreference;

.field private ahe:Landroid/preference/Preference;

.field private ahl:Landroid/preference/CheckBoxPreference;

.field private ahm:Landroid/preference/CheckBoxPreference;

.field private ahn:Landroid/preference/Preference;

.field private aho:Landroid/preference/CheckBoxPreference;

.field private ahp:Landroid/location/LocationManager;

.field private ahq:Z

.field private ahr:Landroid/content/SharedPreferences;

.field private ahs:Landroid/content/SharedPreferences$Editor;

.field private aht:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->Cn:Z

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahp:Landroid/location/LocationManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 296
    const-string v0, "location_services"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 298
    new-instance v1, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v1, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/location/SettingsInjector;->cs(I)Ljava/util/List;

    move-result-object v2

    .line 301
    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/location/MiuiLocationSettings$5;-><init>(Lcom/android/settings/location/MiuiLocationSettings;Lcom/android/settings/location/SettingsInjector;)V

    iput-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 316
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 317
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/MiuiLocationSettings;->a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private a(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-nez p1, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/android/settings/location/MiuiLocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/MiuiLocationSettings$1;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 150
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 160
    :cond_0
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->addPreferencesFromResource(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 162
    const-string v0, "location_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v0, "location_mode"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    .line 166
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings/location/MiuiLocationSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/location/MiuiLocationSettings$2;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aht:Z

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aht:Z

    if-nez v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    .line 191
    :goto_0
    const-string v0, "support_agps"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahq:Z

    .line 192
    const-string v0, "assisted_gps"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    .line 193
    const-string v0, "agps_roaming"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    .line 194
    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahp:Landroid/location/LocationManager;

    invoke-virtual {v0, v5}, Lcom/android/settings/fy;->a(Landroid/location/LocationManager;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    const-string v0, "assisted_gps_params"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahn:Landroid/preference/Preference;

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahq:Z

    if-nez v0, :cond_7

    .line 197
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahn:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_gps_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/settings/location/MiuiLocationSettings;->setHasOptionsMenu(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->rJ()V

    .line 215
    return-object v3

    .line 183
    :cond_4
    const-string v0, "high_accuracy"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    .line 184
    const-string v0, "battery_saving"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    .line 185
    const-string v0, "sensors_only"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    .line 186
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 191
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 194
    goto :goto_2

    .line 200
    :cond_7
    const-string v0, "support_agps_paras"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 202
    :cond_8
    const-string v0, "support_agps_roaming"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahn:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method


# virtual methods
.method public ay()I
    .locals 1

    .prologue
    .line 326
    const v0, 0x7f0c09bd

    return v0
.end method

.method public b(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 409
    const/4 v0, 0x3

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->cr(I)V

    .line 416
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 411
    const/4 v0, 0x2

    goto :goto_0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 413
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/android/settings/location/MiuiLocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    if-eqz p1, :cond_2

    move v0, v1

    .line 335
    :goto_0
    iget-object v4, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 339
    iget-boolean v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->Cn:Z

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 343
    iget-boolean v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->Cn:Z

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    if-nez v3, :cond_4

    .line 384
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 334
    goto :goto_0

    :cond_3
    move v3, v2

    .line 335
    goto :goto_1

    .line 352
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_3
    if-eqz p1, :cond_5

    .line 374
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahs:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_mode"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 375
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    :cond_5
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 380
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 381
    :goto_5
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    .line 354
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    const v4, 0x7f0c0511

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 355
    invoke-direct {p0, v5}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 358
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    const v4, 0x7f0c0510

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 362
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    const v4, 0x7f0c050f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 363
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    .line 366
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahe:Landroid/preference/Preference;

    const v4, 0x7f0c050e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 367
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_3

    :cond_6
    move v0, v2

    .line 378
    goto :goto_4

    :cond_7
    move v1, v2

    .line 380
    goto :goto_5

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahp:Landroid/location/LocationManager;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location_last_mode"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahr:Landroid/content/SharedPreferences;

    .line 116
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahs:Landroid/content/SharedPreferences$Editor;

    .line 117
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "com.android.settings.location.LocationSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v2, v1}, Lcom/android/settings/location/MiuiLocationSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->Cn:Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahl:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 392
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    .line 395
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahr:Landroid/content/SharedPreferences;

    const-string v3, "last_mode"

    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->aht:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->cr(I)V

    :goto_2
    move v0, v1

    .line 402
    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/location/MiuiLocationSettings;->cr(I)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 221
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "assisted_gps_supl_host"

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 228
    new-instance v6, Ljava/io/File;

    const-string v3, "/etc/gps.conf"

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 231
    const-string v4, "assisted_gps_supl_host"

    const-string v6, "SUPL_HOST"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    const-string v4, "assisted_gps_supl_port"

    const-string v6, "SUPL_PORT"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    if-eqz v3, :cond_1

    .line 241
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    :cond_1
    :goto_0
    const-string v2, "assisted_gps_enabled"

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v5, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    :goto_1
    return v1

    .line 235
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 236
    :goto_2
    :try_start_3
    const-string v4, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    if-eqz v3, :cond_1

    .line 241
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v2

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_3

    .line 241
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 243
    :cond_3
    :goto_4
    throw v0

    .line 250
    :cond_4
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 251
    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->aho:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/location/MiuiLocationSettings$4;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/location/MiuiLocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/location/MiuiLocationSettings$3;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c10bd

    invoke-virtual {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c10be

    invoke-virtual {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 276
    :cond_5
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->ahp:Landroid/location/LocationManager;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/fy;->a(Landroid/location/LocationManager;I)V

    goto :goto_1

    .line 279
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1

    .line 242
    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 239
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 235
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->Cn:Z

    .line 126
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->hu()Landroid/preference/PreferenceScreen;

    .line 127
    return-void
.end method
