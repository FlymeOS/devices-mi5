.class public Lcom/android/settings/HeadsetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HeadsetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/view/c;


# instance fields
.field private nA:Landroid/preference/Preference;

.field private nB:Lcom/miui/player/a/a/b;

.field private nC:Lcom/android/settings/ct;

.field private nD:Lcom/android/settings/fG;

.field private nE:Z

.field private final nF:Landroid/content/BroadcastReceiver;

.field private final nG:Lcom/android/settings/fH;

.field private nu:Landroid/preference/PreferenceCategory;

.field private nv:Landroid/preference/PreferenceCategory;

.field private nw:Landroid/preference/CheckBoxPreference;

.field private nx:Landroid/preference/CheckBoxPreference;

.field private ny:Landroid/preference/Preference;

.field private nz:Lcom/android/settings/view/GridPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 255
    new-instance v0, Lcom/android/settings/dl;

    invoke-direct {v0, p0}, Lcom/android/settings/dl;-><init>(Lcom/android/settings/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nF:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v0, Lcom/android/settings/dm;

    invoke-direct {v0, p0}, Lcom/android/settings/dm;-><init>(Lcom/android/settings/HeadsetSettings;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nG:Lcom/android/settings/fH;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/HeadsetSettings;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eh()V

    return-void
.end method

.method private ec()Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private ed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {}, Lcom/miui/player/a/a/b;->Fb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return v1

    .line 154
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 155
    const-string v2, "hifi_mode"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    const-string v0, "default_hifi_mode=false"

    .line 159
    :cond_1
    const-string v2, "HeadsetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIFI mode get: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private ee()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ed()Z

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    return-void
.end method

.method private ef()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ei()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eg()V

    .line 192
    :cond_0
    return-void
.end method

.method private eg()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/a/a/b;->db(Landroid/content/Context;)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nC:Lcom/android/settings/ct;

    invoke-virtual {v1, v0}, Lcom/android/settings/ct;->A(I)I

    move-result v0

    .line 197
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/view/GridPreference;->de(I)V

    goto :goto_0
.end method

.method private eh()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v4

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ed()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v1

    .line 267
    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/player/a/a/b;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 269
    :goto_1
    iget-object v5, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v5, p0, Lcom/android/settings/HeadsetSettings;->ny:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    :goto_2
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/view/GridPreference;->setEnabled(Z)V

    .line 276
    :cond_0
    invoke-static {}, Lcom/miui/player/a/a/b;->Fb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 266
    goto :goto_0

    :cond_3
    move v0, v2

    .line 267
    goto :goto_1

    :cond_4
    move v1, v2

    .line 271
    goto :goto_2
.end method

.method private ei()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/a/a/b;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/view/GridPreference;->setEnabled(Z)V

    .line 286
    return-void
.end method

.method private ej()V
    .locals 3

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/settings/HeadsetSettings;->nE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {v1}, Lcom/android/settings/fG;->gn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {v1}, Lcom/android/settings/fG;->go()I

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {v2}, Lcom/android/settings/fG;->gq()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 351
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {v2}, Lcom/android/settings/fG;->gp()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 353
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 356
    :cond_2
    const v1, 0x7f0c0088

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 362
    :catch_2
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 364
    :catch_3
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 366
    :catch_4
    move-exception v0

    .line 367
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 368
    :catch_5
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 370
    :catch_6
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 305
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 306
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/android/settings/view/GridPreference;I)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {v0}, Lcom/miui/player/a/a/b;->Fa()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nC:Lcom/android/settings/ct;

    invoke-virtual {v0, p2}, Lcom/android/settings/ct;->B(I)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/a/a/b;->db(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {p1}, Lcom/android/settings/view/GridPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nC:Lcom/android/settings/ct;

    invoke-virtual {v2, p2}, Lcom/android/settings/ct;->B(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/a/a/b;->C(Landroid/content/Context;I)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ef()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/HeadsetSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v0, "audio_effect_optimize"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    .line 67
    const-string v0, "dirac_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v0, "hifi_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v0, "headset_type_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nv:Landroid/preference/PreferenceCategory;

    .line 70
    const-string v0, "headsets_grid"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/GridPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    .line 71
    const-string v0, "equalizer"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->ny:Landroid/preference/Preference;

    .line 72
    const-string v0, "dolby_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nA:Landroid/preference/Preference;

    .line 74
    invoke-static {}, Lcom/miui/player/a/a/b;->Fb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/miui/player/a/a/b;->EZ()Lcom/miui/player/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    .line 82
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {v0}, Lcom/miui/player/a/a/b;->initialize()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    new-instance v0, Lcom/android/settings/ct;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-direct {v0, v1}, Lcom/android/settings/ct;-><init>(Lcom/miui/player/a/a/b;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nC:Lcom/android/settings/ct;

    .line 86
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nC:Lcom/android/settings/ct;

    invoke-virtual {v0, v1}, Lcom/android/settings/view/GridPreference;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nz:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/view/GridPreference;->a(Lcom/android/settings/view/c;)V

    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-static {}, Lcom/android/settings/fG;->gm()Lcom/android/settings/fG;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    .line 97
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nG:Lcom/android/settings/fH;

    invoke-virtual {v0, v1}, Lcom/android/settings/fG;->a(Lcom/android/settings/fH;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fG;->O(Landroid/content/Context;)Z

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->ny:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nu:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nA:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nD:Lcom/android/settings/fG;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fG;->P(Landroid/content/Context;)V

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nF:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {v0}, Lcom/miui/player/a/a/b;->release()V

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x3

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 207
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {v0}, Lcom/miui/player/a/a/b;->Fa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->nx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/miui/player/a/a/b;->t(Landroid/content/Context;Z)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ef()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eh()V

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hifi_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 221
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 227
    iget-object v7, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    if-eqz v5, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v7, v1}, Lcom/miui/player/a/a/b;->setHifiMode(I)V

    .line 229
    if-nez v5, :cond_2

    .line 230
    const-string v1, "hifi_volume"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v1, v3

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 233
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 234
    const-string v5, "HeadsetSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get non-hifi volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-le v3, v1, :cond_2

    .line 236
    const/16 v3, 0x8

    invoke-virtual {v0, v10, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 237
    const-string v0, "HeadsetSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set non-hifi volume: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "command"

    const-string v3, "toggleHiFi"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "hifi_state"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ef()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eh()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ee()V

    .line 249
    const-string v0, "HeadsetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HIFI mode change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 227
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 171
    const-string v0, "calibrate"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :goto_0
    const/4 v0, 0x1

    .line 184
    :goto_1
    return v0

    .line 175
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0c0062

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/HeadsetSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/HeadsetCalibrateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/a/a/b;->isSupportDirac(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->nB:Lcom/miui/player/a/a/b;

    invoke-virtual {v0}, Lcom/miui/player/a/a/b;->initialize()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/HeadsetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HeadsetSettings;->nF:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ef()V

    .line 119
    :cond_0
    invoke-static {}, Lcom/miui/player/a/a/b;->Fb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ee()V

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->eh()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->ej()V

    .line 127
    :cond_2
    return-void
.end method
