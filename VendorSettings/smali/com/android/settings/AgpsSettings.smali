.class public Lcom/android/settings/AgpsSettings;
.super Lmiui/preference/PreferenceActivity;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static F:Ljava/lang/String;


# instance fields
.field private G:Landroid/preference/EditTextPreference;

.field private H:Landroid/preference/EditTextPreference;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFirstTime:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 375
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "port"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "providerid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    const-string v3, "network"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    const-string v4, "resettype"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 381
    iget-object v5, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_host"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    :goto_0
    if-eqz v1, :cond_4

    .line 388
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "assisted_gps_supl_port"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_position_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 402
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 403
    const-string v0, "HOT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 404
    const-string v0, "2"

    .line 410
    :goto_2
    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_reset_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    :cond_2
    return-void

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "assisted_gps_supl_host"

    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c106a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_supl_port"

    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c106b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 405
    :cond_5
    const-string v0, "WARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 406
    const-string v0, "1"

    goto :goto_2

    .line 408
    :cond_6
    const-string v0, "0"

    goto :goto_2
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/settings/AgpsSettings;->mFirstTime:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AgpsSettings;->mFirstTime:Z

    .line 205
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->G:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->H:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->G:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->G:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->H:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->H:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->k()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->l()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->m()V

    .line 214
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object p1, Lcom/android/settings/AgpsSettings;->F:Ljava/lang/String;

    .line 227
    :cond_0
    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/AgpsSettings;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const-string p1, ""

    .line 235
    :cond_1
    return-object p1
.end method

.method private k()V
    .locals 4

    .prologue
    .line 150
    const-string v0, "agps_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 151
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->r()Ljava/lang/String;

    move-result-object v2

    .line 156
    iput-object v2, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    .line 157
    const-string v3, "MSB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v3, "MSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 170
    const-string v0, "agps_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 171
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->p()Ljava/lang/String;

    move-result-object v2

    .line 174
    iput-object v2, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    .line 175
    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 185
    const-string v0, "agps_reset_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 186
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->q()Ljava/lang/String;

    move-result-object v2

    .line 189
    iput-object v2, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    .line 190
    const-string v3, "COLD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 192
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v3, "WARM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_supl_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c106a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_supl_port"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c106b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c106c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_reset_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    const-string v0, "HOT"

    .line 272
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    return-object v0

    .line 266
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 267
    const-string v0, "WARM"

    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "COLD"

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c106d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_position_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c106e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    .line 310
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 311
    const-string v0, "host"

    iget-object v2, p0, Lcom/android/settings/AgpsSettings;->G:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/AgpsSettings;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "port"

    iget-object v2, p0, Lcom/android/settings/AgpsSettings;->H:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/AgpsSettings;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "providerid"

    iget-object v2, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "network"

    iget-object v2, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings;->a(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    const-string v2, "HOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const-string v0, "resettype"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 325
    const-string v2, "gps"

    const-string v3, "agps_parms_changed"

    invoke-virtual {v0, v2, v3, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 327
    const-string v1, "AGPSSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExtraCommand ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    const-string v2, "WARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const-string v0, "resettype"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, "resettype"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 331
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 334
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 335
    new-instance v4, Ljava/io/File;

    const-string v1, "/etc/gps.conf"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 338
    const-string v2, "host"

    const-string v4, "SUPL_HOST"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "port"

    const-string v4, "SUPL_PORT"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    if-eqz v1, :cond_0

    .line 346
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 351
    :cond_0
    :goto_0
    const-string v0, "MSB"

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    .line 352
    const-string v0, "HOME"

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    .line 353
    const-string v0, "HOT"

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    .line 354
    const-string v0, "providerid"

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "network"

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "resettype"

    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v3}, Lcom/android/settings/AgpsSettings;->a(Landroid/os/Bundle;)V

    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AgpsSettings;->a(Z)V

    .line 359
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 361
    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    const-string v2, "HOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 362
    const-string v1, "resettype"

    const-string v2, "2"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_1
    const-string v1, "gps"

    const-string v2, "agps_parms_changed"

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 370
    const-string v1, "AGPSSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendExtraCommand ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 341
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 342
    :goto_2
    :try_start_3
    const-string v2, "AGPSSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    if-eqz v1, :cond_0

    .line 346
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 347
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 344
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    .line 346
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 348
    :cond_1
    :goto_4
    throw v0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    const-string v2, "WARM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 364
    const-string v1, "resettype"

    const-string v2, "1"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_3
    const-string v1, "resettype"

    const-string v2, "0"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 344
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 341
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->addPreferencesFromResource(I)V

    .line 128
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/AgpsSettings;->mFirstTime:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c1069

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AgpsSettings;->F:Ljava/lang/String;

    .line 130
    const-string v0, "server_addr"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->G:Landroid/preference/EditTextPreference;

    .line 131
    const-string v0, "server_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/AgpsSettings;->H:Landroid/preference/EditTextPreference;

    .line 132
    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings;->a(Z)V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 289
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 299
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->s()V

    goto :goto_0

    .line 303
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings;->t()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 417
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 419
    check-cast p1, Landroid/preference/ListPreference;

    .line 420
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    const-string v3, "agps_network"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 430
    if-nez v2, :cond_3

    .line 431
    const-string v3, "HOME"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    .line 435
    :cond_0
    :goto_0
    if-ne v2, v5, :cond_1

    .line 436
    const v3, 0x7f0c1068

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 466
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 467
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    :cond_2
    return v5

    .line 432
    :cond_3
    if-ne v2, v5, :cond_0

    .line 433
    const-string v3, "ALL"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->K:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_4
    const-string v3, "agps_reset_type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 444
    if-nez v2, :cond_5

    .line 445
    const-string v3, "HOT"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    goto :goto_1

    .line 446
    :cond_5
    if-ne v2, v5, :cond_6

    .line 447
    const-string v3, "WARM"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    goto :goto_1

    .line 449
    :cond_6
    const-string v3, "COLD"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->J:Ljava/lang/String;

    goto :goto_1

    .line 452
    :cond_7
    const-string v3, "agps_pref"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    if-nez v2, :cond_8

    .line 457
    const-string v3, "MSB"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    goto :goto_1

    .line 458
    :cond_8
    if-ne v2, v5, :cond_1

    .line 459
    const-string v3, "MSA"

    iput-object v3, p0, Lcom/android/settings/AgpsSettings;->I:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0, p2}, Lcom/android/settings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method
