.class public Lcom/android/vendorsettings/deviceinfo/StorageSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "StorageSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field static final WZ:I

.field static final Xa:I

.field static final Xb:[I

.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private Vr:Landroid/os/storage/StorageManager;

.field private final Wj:Landroid/os/storage/StorageEventListener;

.field private Wl:Landroid/preference/PreferenceCategory;

.field private Xc:Landroid/preference/PreferenceCategory;

.field private Xd:Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "#ff9e9e9e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->WZ:I

    .line 67
    const-string v0, "#fff4511e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xa:I

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#ff26a69a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#ffab47bc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#fff2a600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#ffec407a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#ffc0ca33"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xb:[I

    .line 449
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/vendorsettings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wj:Landroid/os/storage/StorageEventListener;

    .line 407
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/StorageSettings;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method private static a(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method private refresh()V
    .locals 18

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xd:Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    const/4 v6, 0x0

    .line 147
    const-wide/16 v4, 0x0

    .line 148
    const-wide/16 v2, 0x0

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v7

    .line 151
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 153
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v16, v2

    move v3, v6

    move-wide v6, v4

    move-wide/from16 v4, v16

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 154
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 155
    sget-object v11, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xb:[I

    add-int/lit8 v8, v3, 0x1

    sget-object v12, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xb:[I

    array-length v12, v12

    rem-int/2addr v3, v12

    aget v3, v11, v3

    .line 156
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    new-instance v12, Lcom/android/vendorsettings/deviceinfo/StorageVolumePreference;

    invoke-direct {v12, v9, v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v14

    sub-long/2addr v12, v14

    add-long/2addr v6, v12

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v4, v2

    :cond_0
    move-wide v2, v4

    move-wide v4, v6

    move v6, v8

    :goto_1
    move-wide/from16 v16, v2

    move v3, v6

    move-wide v6, v4

    move-wide/from16 v4, v16

    .line 167
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    new-instance v11, Lcom/android/vendorsettings/deviceinfo/StorageVolumePreference;

    sget v12, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->WZ:I

    invoke-direct {v11, v9, v2, v12}, Lcom/android/vendorsettings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    move-wide/from16 v16, v4

    move-wide v4, v6

    move v6, v3

    move-wide/from16 v2, v16

    goto :goto_1

    .line 170
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 172
    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v8

    if-nez v8, :cond_4

    .line 175
    const v8, 0x7f020197

    invoke-virtual {v9, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 176
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 177
    sget v10, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->WZ:I

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 179
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    const v2, 0x1040420

    invoke-virtual {v10, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 183
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 189
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    .line 190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    .line 191
    iget v8, v2, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v8, :cond_6

    iget-wide v10, v2, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_6

    .line 192
    new-instance v8, Landroid/preference/Preference;

    invoke-direct {v8, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    const v2, 0x104041d

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 196
    const v2, 0x7f020197

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 201
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v6, v7, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v2

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xd:Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;

    const v6, 0x7f0c0464

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    iget-object v10, v2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v7, v8

    const/4 v8, 0x1

    iget-object v2, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xd:Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;

    const v3, 0x7f0c0466

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_9
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-class v2, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c0461

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->finish()V

    .line 228
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0c09ac

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 105
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 108
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->addPreferencesFromResource(I)V

    .line 110
    const-string v0, "storage_internal"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wl:Landroid/preference/PreferenceCategory;

    .line 111
    const-string v0, "storage_external"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xc:Landroid/preference/PreferenceCategory;

    .line 113
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Xd:Lcom/android/vendorsettings/deviceinfo/StorageSummaryPreference;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->setHasOptionsMenu(Z)V

    .line 116
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 241
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 245
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 246
    instance-of v1, p2, Lcom/android/vendorsettings/deviceinfo/StorageVolumePreference;

    if-eqz v1, :cond_5

    .line 248
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->b(Landroid/app/Fragment;Ljava/lang/String;)V

    move v4, v6

    .line 292
    :cond_0
    :goto_0
    return v4

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 254
    const v1, 0x7f0c046f

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;->a(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v6

    .line 255
    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 259
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 263
    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 268
    goto :goto_0

    .line 270
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 271
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 274
    goto :goto_0

    .line 278
    :cond_5
    const-string v1, "disk:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    const v1, 0x7f0c0470

    invoke-static {p0, v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$DiskInitFragment;->a(Landroid/app/Fragment;ILjava/lang/String;)V

    move v4, v6

    .line 281
    goto :goto_0

    .line 285
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 286
    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0455

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 289
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 234
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings;->refresh()V

    .line 235
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x2a

    return v0
.end method
