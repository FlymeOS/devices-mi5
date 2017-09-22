.class public Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "MiuiStorageVolumePreferenceCategory.java"


# instance fields
.field Vp:Z

.field private final Vq:Landroid/os/storage/VolumeInfo;

.field private final Vr:Landroid/os/storage/StorageManager;

.field private Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

.field private Vt:Landroid/preference/Preference;

.field private Vu:Landroid/preference/Preference;

.field private Vv:Landroid/os/storage/DiskInfo;

.field private Vw:Ljava/lang/String;

.field private Vx:J

.field private final mResources:Landroid/content/res/Resources;

.field private uw:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/DiskInfo;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    .line 73
    iput-object p2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vq:Landroid/os/storage/VolumeInfo;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 75
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vr:Landroid/os/storage/StorageManager;

    .line 76
    iput-object p3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vv:Landroid/os/storage/DiskInfo;

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vv:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/DiskInfo;)Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/DiskInfo;)V

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(JJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    iput-wide p1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vx:J

    .line 230
    sub-long v0, p1, p3

    .line 231
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 232
    iget-wide v2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vx:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    long-to-float v0, v0

    long-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, -0x10000

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->b(IFI)V

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0d50

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->h(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->h(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->commit()V

    .line 238
    return-void
.end method

.method private h(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private oY()V
    .locals 8

    .prologue
    const v1, 0x7f0c043e

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 146
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    if-eq v2, v6, :cond_0

    if-ne v2, v7, :cond_7

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_6

    .line 158
    const v1, 0x7f0c043b

    .line 159
    const v0, 0x7f0c043c

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 166
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 204
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->uw:Z

    if-eqz v0, :cond_c

    const-string v0, "mtp"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ptp"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_4

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_5
    :goto_2
    return-void

    .line 161
    :cond_6
    const v1, 0x7f0c1141

    .line 162
    const v0, 0x7f0c1142

    goto :goto_0

    .line 169
    :cond_7
    if-eqz v2, :cond_8

    const/4 v0, 0x6

    if-ne v2, v0, :cond_a

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 172
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_9

    .line 174
    const v0, 0x7f0c043f

    .line 180
    :goto_3
    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :goto_4
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 176
    :cond_9
    const v1, 0x7f0c1145

    .line 177
    const v0, 0x7f0c1146

    goto :goto_3

    .line 184
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_b

    .line 188
    const v0, 0x7f0c043d

    .line 194
    :goto_5
    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 190
    :cond_b
    const v1, 0x7f0c1145

    .line 191
    const v0, 0x7f0c1147

    goto :goto_5

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    const v1, 0x7f0c0441

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 222
    :cond_d
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    const v1, 0x7f0c1144

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public g(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->removeAll()V

    .line 88
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    .line 102
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_1

    .line 103
    const v1, 0x7f0c043b

    .line 104
    const v0, 0x7f0c043c

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 111
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vt:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 116
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    .line 119
    iget-boolean v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vp:Z

    if-eqz v0, :cond_2

    .line 120
    const v1, 0x7f0c0440

    .line 121
    const v0, 0x7f0c0441

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 128
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vu:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 137
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->b(JJ)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->oY()V

    .line 140
    return-void

    .line 106
    :cond_1
    const v1, 0x7f0c1141

    .line 107
    const v0, 0x7f0c1142

    goto :goto_0

    .line 123
    :cond_2
    const v1, 0x7f0c1143

    .line 124
    const v0, 0x7f0c1144

    goto :goto_1
.end method

.method public oZ()Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->Vq:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method
