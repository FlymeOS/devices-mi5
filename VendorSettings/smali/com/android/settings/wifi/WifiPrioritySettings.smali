.class public Lcom/android/settings/wifi/WifiPrioritySettings;
.super Lmiui/preference/PreferenceActivity;
.source "WifiPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field aDx:Landroid/preference/PreferenceCategory;

.field private aDy:Ljava/util/List;

.field private aDz:I

.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    if-nez p1, :cond_1

    move v2, v3

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    if-eqz p2, :cond_0

    .line 138
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v0, v1, :cond_0

    .line 140
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v0, v1, :cond_2

    move v2, v3

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    .line 144
    :goto_1
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    .line 145
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-le v0, v1, :cond_5

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_4
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move v0, v3

    .line 146
    goto :goto_3

    .line 150
    :cond_6
    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_7
    const-string v4, "CMCC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 157
    const-string v0, "CMCC-AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 159
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_8
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 165
    goto :goto_0

    .line 169
    :cond_9
    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 171
    const-string v0, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CMCC-AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 174
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_a
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 180
    goto/16 :goto_0

    .line 186
    :cond_b
    const-string v4, "CMCC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 194
    :cond_c
    const-string v0, "WifiPrioritySettings"

    const-string v1, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 195
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiPrioritySettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiPrioritySettings;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private h(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 276
    const-string v0, "WifiPrioritySettings"

    const-string v1, "updateConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 281
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 282
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 283
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 287
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 289
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_0
    return-object p1
.end method


# virtual methods
.method public D(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 124
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 101
    if-nez v0, :cond_2

    .line 102
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 103
    const-string v3, "ERROR"

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 104
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Lcom/android/settings/wifi/ao;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ao;-><init>(Lcom/android/settings/wifi/WifiPrioritySettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    :goto_1
    if-ge v1, v2, :cond_0

    .line 117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 118
    sub-int v3, v2, v1

    .line 119
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-eq v4, v3, :cond_4

    .line 120
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->h(Landroid/net/wifi/WifiConfiguration;)V

    .line 116
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public kW()V
    .locals 6

    .prologue
    .line 259
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDx:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 263
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, ""

    move-object v3, v0

    .line 264
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0f50

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 269
    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 273
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0401a2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->addPreferencesFromResource(I)V

    .line 37
    const-string v0, "configured_ap_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDx:Landroid/preference/PreferenceCategory;

    .line 39
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->yq()V

    .line 41
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 217
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 218
    check-cast p1, Landroid/preference/ListPreference;

    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 223
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 228
    :goto_0
    const-string v5, "WifiPrioritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Priority old value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v5, 0x7f0c0f4e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    check-cast p2, Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/WifiPrioritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    if-eq v3, v1, :cond_1

    .line 233
    add-int/lit8 v3, v3, -0x1

    .line 234
    add-int/lit8 v4, v1, -0x1

    .line 235
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 237
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 238
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    .line 239
    :goto_1
    if-gt v3, v4, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 241
    sub-int v6, v5, v3

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 242
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->h(Landroid/net/wifi/WifiConfiguration;)V

    .line 239
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    move-object v3, v1

    move v1, v2

    .line 225
    :goto_2
    const-string v5, "WifiPrioritySettings"

    const-string v6, "Error happens when modify priority manually"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v3, v1

    move v1, v2

    goto/16 :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->kW()V

    .line 252
    :goto_3
    return v2

    :cond_1
    move v2, v4

    goto :goto_3

    .line 224
    :catch_1
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v8

    goto :goto_2
.end method

.method public yq()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 48
    const-string v0, "WifiPrioritySettings"

    const-string v1, "Fail to get Wifi Manager service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDx:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDx:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDz:I

    .line 57
    iget v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDz:I

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 58
    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDz:I

    if-ge v0, v2, :cond_2

    .line 59
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 62
    :goto_2
    iget v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDz:I

    if-ge v2, v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 64
    const-string v4, "WifiPrioritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before sorting: ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->D(Ljava/util/List;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0f50

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_3
    iget v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDz:I

    if-ge v1, v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 73
    const-string v4, "WifiPrioritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After sorting: ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v0, ""

    .line 77
    :goto_4
    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->aDx:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 76
    :cond_4
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0
.end method
