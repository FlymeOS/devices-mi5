.class public Lcom/android/vendorsettings/notification/MiuiZenModeSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/search/k;


# instance fields
.field private aah:Landroid/service/notification/ZenModeConfig;

.field private aay:Landroid/preference/CheckBoxPreference;

.field private final aiV:Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;

.field private aiW:Landroid/os/SystemVibrator;

.field private aiX:Landroid/preference/PreferenceScreen;

.field private aiY:Landroid/preference/CheckBoxPreference;

.field private aiZ:Landroid/preference/CheckBoxPreference;

.field private aja:Lcom/android/vendorsettings/dndmode/LabelPreference;

.field private ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

.field private ajc:Landroid/preference/PreferenceCategory;

.field private ajd:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiV:Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public static bI(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 243
    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "type=\'3\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 248
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 254
    if-eqz v1, :cond_0

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz v1, :cond_2

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v6

    .line 258
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 252
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    if-eqz v1, :cond_2

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_3

    .line 255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 254
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 251
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->pV()V

    return-void
.end method

.method private pV()V
    .locals 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiY:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    .line 191
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0ba7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->bI(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aja:Lcom/android/vendorsettings/dndmode/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->sg()V

    .line 203
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private sg()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bbf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0bc6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiX:Landroid/preference/PreferenceScreen;

    .line 101
    new-instance v0, Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiW:Landroid/os/SystemVibrator;

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    .line 103
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiX:Landroid/preference/PreferenceScreen;

    const-string v1, "key_do_not_disturb_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiY:Landroid/preference/CheckBoxPreference;

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiY:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$1;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiX:Landroid/preference/PreferenceScreen;

    const-string v1, "key_auto_setting_group"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajc:Landroid/preference/PreferenceCategory;

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajc:Landroid/preference/PreferenceCategory;

    const-string v1, "key_auto_button"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aay:Landroid/preference/CheckBoxPreference;

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aay:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aay:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$2;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiX:Landroid/preference/PreferenceScreen;

    const-string v1, "alarm_use"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajd:Landroid/preference/PreferenceCategory;

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajd:Landroid/preference/PreferenceCategory;

    const-string v1, "vip"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aja:Lcom/android/vendorsettings/dndmode/LabelPreference;

    .line 146
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aja:Lcom/android/vendorsettings/dndmode/LabelPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$3;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajd:Landroid/preference/PreferenceCategory;

    const-string v1, "alarm_content"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajb:Lcom/android/vendorsettings/dndmode/LabelPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$4;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$4;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajd:Landroid/preference/PreferenceCategory;

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiZ:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiZ:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiZ:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$5;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$5;-><init>(Lcom/android/vendorsettings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->pV()V

    .line 185
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->ajd:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aja:Lcom/android/vendorsettings/dndmode/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiV:Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;->unregister()V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->pV()V

    .line 229
    iget-object v0, p0, Lcom/android/vendorsettings/notification/MiuiZenModeSettings;->aiV:Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/MiuiZenModeSettings$SettingsObserver;->register()V

    .line 230
    return-void
.end method
