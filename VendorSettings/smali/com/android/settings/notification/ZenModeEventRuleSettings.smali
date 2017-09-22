.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# static fields
.field private static final akX:Ljava/util/Comparator;


# instance fields
.field private akS:Lcom/android/settings/DropDownPreference;

.field private akT:Lcom/android/settings/DropDownPreference;

.field private akU:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private akV:Ljava/util/List;

.field private akW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akX:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 227
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method private static a(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bR(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .prologue
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 166
    invoke-static {p0, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->e(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akX:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    return-object v1
.end method

.method private static d(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->d(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 184
    const-string v0, "\"primary\""

    .line 185
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "calendar_displayName"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "(account_name=ownerAccount) AS \"primary\""

    aput-object v1, v2, v0

    .line 187
    const-string v0, "\"primary\" = 1"

    .line 190
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "\"primary\" = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 192
    if-nez v1, :cond_1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    .line 197
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    iput v2, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    .line 199
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 202
    :cond_3
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 202
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private static h(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sI()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->bR(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akV:Ljava/util/List;

    .line 81
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/DropDownPreference;->dJ()V

    .line 82
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    const v3, 0x7f0c0a92

    invoke-static {v2, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    move-object v1, v0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .line 86
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    iget-object v5, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->a(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const/4 v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 90
    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 83
    goto :goto_0

    .line 91
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v2, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected b(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    .prologue
    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akW:Z

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->sI()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akW:Z

    .line 77
    return-void
.end method

.method protected sG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sH()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0a8d

    return v0
.end method

.method protected sJ()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    iput-boolean v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akW:Z

    .line 99
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 102
    const-string v0, "calendar"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/DropDownPreference;->a(Lcom/android/settings/cO;)V

    .line 119
    const-string v0, "reply"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    const v1, 0x7f0c0a94

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    const v1, 0x7f0c0a95

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    const v1, 0x7f0c0a96

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->a(Lcom/android/settings/cO;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->sI()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->sK()V

    .line 139
    return-void
.end method

.method protected sK()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akS:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->d(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akT:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->akU:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x92

    return v0
.end method
