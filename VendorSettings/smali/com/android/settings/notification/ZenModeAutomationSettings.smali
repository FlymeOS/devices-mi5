.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# static fields
.field static final ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private static final akG:Ljava/util/Comparator;


# instance fields
.field private aiL:Lcom/android/settings/notification/ServiceListing;

.field private final akE:Ljava/text/SimpleDateFormat;

.field private final akF:Lcom/android/settings/notification/ServiceListing$Callback;

.field private final mCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->sF()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 317
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$5;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akG:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akE:Ljava/text/SimpleDateFormat;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    .line 301
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$4;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    .line 332
    return-void
.end method

.method private a(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    const v0, 0x7f0c0a8f

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const v1, 0x7f0c0a91

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->c(Landroid/service/notification/ZenModeConfig$EventInfo;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const v2, 0x7f0c0a98

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->b([I)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->n(II)Ljava/lang/String;

    move-result-object v1

    .line 203
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->n(II)Ljava/lang/String;

    move-result-object v2

    .line 204
    const v3, 0x7f0c0a9e

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    const v2, 0x7f0c0a98

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0c0abc

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->c(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    const v0, 0x7f0c0abb

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    .line 191
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v3

    .line 192
    if-eqz v2, :cond_3

    .line 193
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_2
    :goto_1
    const v2, 0x7f0c0a98

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_3
    if-eqz v3, :cond_2

    .line 195
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->sD()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rule_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method private b(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0a90

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b([I)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 241
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    move v0, v3

    .line 242
    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 243
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const v0, 0x7f0c0a9a

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_1
    :goto_1
    return-object v0

    .line 248
    :cond_2
    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    array-length v6, v0

    .line 249
    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 250
    const v0, 0x7f0c0a9b

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 252
    :cond_3
    const/4 v0, 0x0

    move v1, v3

    .line 253
    :goto_2
    if-ge v1, v6, :cond_1

    .line 254
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    aget v4, v2, v1

    .line 255
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 256
    if-nez v2, :cond_4

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 253
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    goto :goto_2

    :cond_4
    move v2, v3

    .line 258
    :goto_4
    sget-object v7, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v8, v1, v2

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v6

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 261
    :cond_5
    if-nez v1, :cond_6

    sget-object v7, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 262
    :cond_6
    if-nez v2, :cond_8

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->cC(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    :goto_5
    if-nez v0, :cond_9

    move-object v0, v4

    .line 268
    :cond_7
    :goto_6
    add-int/2addr v1, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_3

    .line 262
    :cond_8
    const v7, 0x7f0c0a9d

    new-array v8, v11, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->cC(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    sget-object v4, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v9, v1, v2

    rem-int/2addr v9, v6

    aget v4, v4, v9

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->cC(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 266
    :cond_9
    const v7, 0x7f0c0a9c

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v4, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private c(Landroid/service/notification/ZenModeConfig$EventInfo;)I
    .locals 3

    .prologue
    .line 222
    iget v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_0
    const v0, 0x7f0c0a94

    .line 228
    :goto_0
    return v0

    .line 226
    :pswitch_1
    const v0, 0x7f0c0a96

    goto :goto_0

    .line 228
    :pswitch_2
    const v0, 0x7f0c0a95

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 297
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    const v0, 0x7f0c0a4f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_1
    const v0, 0x7f0c0a4e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :pswitch_2
    const v0, 0x7f0c0a50

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private cC(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akE:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pV()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 139
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->sE()[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    move-result-object v9

    move v6, v7

    .line 142
    :goto_1
    array-length v0, v9

    if-ge v6, v0, :cond_3

    .line 143
    aget-object v0, v9, v6

    iget-object v4, v0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 144
    aget-object v0, v9, v6

    iget-object v5, v0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->akL:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 145
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    .line 146
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v3

    .line 147
    new-instance v10, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 148
    if-eqz v2, :cond_1

    const v0, 0x7f020154

    :goto_2
    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 151
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 154
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;ZZLjava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 148
    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f02010c

    goto :goto_2

    :cond_2
    const v0, 0x7f02011c

    goto :goto_2

    .line 166
    :cond_3
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 167
    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 168
    const v1, 0x7f0c0a83

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 169
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 170
    new-instance v1, Lcom/android/settings/notification/ZenModeAutomationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$3;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private sD()V
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->show()V

    .line 115
    return-void
.end method

.method private sE()[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v2, v0, [Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 128
    new-instance v3, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings$1;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v0, v3, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->akL:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 131
    aput-object v3, v2, v1

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akG:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 134
    return-object v2
.end method

.method private static sF()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 280
    const-string v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 281
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    .line 282
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 283
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 284
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiQ:Ljava/lang/String;

    .line 285
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->addPreferencesFromResource(I)V

    .line 67
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/ZenModeAutomationSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->b(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->pV()V

    .line 94
    return-void
.end method

.method protected sB()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected sC()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->pV()V

    .line 88
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x8e

    return v0
.end method
