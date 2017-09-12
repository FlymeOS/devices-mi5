.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$Migration;,
        Landroid/service/notification/ZenModeConfig$XmlV1;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALARM:Ljava/lang/String; = "alarm"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_LIGHT:Ljava/lang/String; = "light"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_MUSIC:Ljava/lang/String; = "music"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_ATT_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = true

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I = 0x3

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKEND_DAYS:[I

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x2

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowAlarm:Z

.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowLight:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowMusic:Z

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public allowVibrate:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public user:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    .line 74
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 659
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 68
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 72
    :array_2
    .array-data 4
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 132
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 133
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 134
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 135
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 136
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 137
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 138
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 141
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 132
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 133
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 134
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 135
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 136
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 137
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 138
    iput v6, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 141
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_7
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_8

    :goto_8
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 169
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "len":I
    if-lez v2, :cond_9

    .line 172
    new-array v1, v2, [Ljava/lang/String;

    .line 173
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 174
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 175
    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_9

    .line 177
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aget-object v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    .line 153
    goto/16 :goto_0

    :cond_1
    move v4, v6

    .line 154
    goto :goto_1

    :cond_2
    move v4, v6

    .line 155
    goto :goto_2

    :cond_3
    move v4, v6

    .line 156
    goto :goto_3

    :cond_4
    move v4, v6

    .line 157
    goto :goto_4

    :cond_5
    move v4, v6

    .line 160
    goto :goto_5

    :cond_6
    move v4, v6

    .line 161
    goto :goto_6

    :cond_7
    move v4, v6

    .line 162
    goto :goto_7

    :cond_8
    move v5, v6

    .line 163
    goto :goto_8

    .line 180
    .restart local v2    # "len":I
    :cond_9
    return-void
.end method

.method static synthetic access$200([I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [I

    .prologue
    .line 54
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;",
            "Landroid/util/ArrayMap",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_0

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 11
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v8, 0x0

    .line 240
    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 241
    .local v2, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_0

    .line 242
    const-string v7, "config"

    const-string v8, "delete"

    # invokes: Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    invoke-static {v2, v7, v8}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v2

    .line 279
    .end local v2    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :goto_0
    return-object v2

    .line 244
    .restart local v2    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_0
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v7, v9, :cond_1

    .line 245
    const-string/jumbo v7, "user"

    iget v9, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 247
    :cond_1
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v7, v9, :cond_2

    .line 248
    const-string v7, "allowCalls"

    iget-boolean v9, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 250
    :cond_2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v7, v9, :cond_3

    .line 251
    const-string v7, "allowRepeatCallers"

    iget-boolean v9, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 253
    :cond_3
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v7, v9, :cond_4

    .line 254
    const-string v7, "allowMessages"

    iget-boolean v9, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 256
    :cond_4
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v7, v9, :cond_5

    .line 257
    const-string v7, "allowCallsFrom"

    iget v9, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 259
    :cond_5
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v7, v9, :cond_6

    .line 260
    const-string v7, "allowMessagesFrom"

    iget v9, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 262
    :cond_6
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v7, v9, :cond_7

    .line 263
    const-string v7, "allowReminders"

    iget-boolean v9, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 265
    :cond_7
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v7, v9, :cond_8

    .line 266
    const-string v7, "allowEvents"

    iget-boolean v9, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 268
    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 269
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 270
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 271
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 272
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_b

    .line 273
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 274
    .local v5, "rule":Ljava/lang/String;
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object v3, v7

    .line 275
    .local v3, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_2
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_a

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object v6, v7

    .line 276
    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "automaticRule["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    move-object v3, v8

    .line 274
    goto :goto_2

    .restart local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_a
    move-object v6, v8

    .line 275
    goto :goto_3

    .line 278
    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "rule":Ljava/lang/String;
    :cond_b
    const-string/jumbo v7, "manualRule"

    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    # invokes: Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto/16 :goto_0
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 283
    if-nez p0, :cond_1

    .line 284
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 285
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_0

    .line 286
    const-string v1, "config"

    const-string/jumbo v2, "insert"

    # invokes: Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 290
    .end local v0    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateMinuteBuckets()[I
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 329
    const/16 v2, 0xc

    .line 330
    .local v2, "maxHrs":I
    new-array v0, v4, [I

    .line 331
    .local v0, "buckets":[I
    const/4 v3, 0x0

    aput v4, v0, v3

    .line 332
    const/4 v3, 0x1

    const/16 v4, 0x1e

    aput v4, v0, v3

    .line 333
    const/4 v3, 0x2

    const/16 v4, 0x2d

    aput v4, v0, v3

    .line 334
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 335
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v0, v3

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-object v0
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "useLine1"    # Z
    .param p4, "shortVersion"    # Z

    .prologue
    .line 1001
    if-nez p1, :cond_1

    const-string v14, ""

    .line 1030
    :cond_0
    :goto_0
    return-object v14

    .line 1002
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_6

    .line 1003
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1004
    .local v11, "id":Landroid/net/Uri;
    if-nez v11, :cond_2

    .line 1005
    const v3, 0x1040589

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1007
    :cond_2
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1008
    .local v4, "time":J
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1009
    .local v9, "c":Landroid/service/notification/Condition;
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1011
    .local v12, "now":J
    sub-long v16, v4, v12

    .line 1012
    .local v16, "span":J
    move-wide/from16 v0, v16

    long-to-float v3, v0

    const v6, 0x476a6000    # 60000.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v9

    .line 1015
    .end local v12    # "now":J
    .end local v16    # "span":J
    :cond_3
    if-nez v9, :cond_4

    const-string v14, ""

    .line 1016
    .local v14, "rt":Ljava/lang/String;
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v14, ""

    goto :goto_0

    .line 1015
    .end local v14    # "rt":Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    iget-object v14, v9, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v14, v9, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_1

    .line 1018
    .end local v4    # "time":J
    .end local v9    # "c":Landroid/service/notification/Condition;
    .end local v11    # "id":Landroid/net/Uri;
    :cond_6
    const-string v15, ""

    .line 1019
    .local v15, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1020
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1021
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1022
    iget-object v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_2

    .line 1024
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x104058b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    const/4 v8, 0x1

    iget-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    move-object v14, v15

    .line 1030
    goto/16 :goto_0
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 996
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "userHandle"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EEE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Hm"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "skeleton":Ljava/lang/String;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 786
    .local v1, "now":Ljava/util/GregorianCalendar;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 787
    .local v0, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 788
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 791
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "Hm"

    .line 793
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 784
    .end local v0    # "endTime":Ljava/util/GregorianCalendar;
    .end local v1    # "now":Ljava/util/GregorianCalendar;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "hma"

    goto :goto_0

    .line 791
    .restart local v0    # "endTime":Ljava/util/GregorianCalendar;
    .restart local v1    # "now":Ljava/util/GregorianCalendar;
    .restart local v3    # "skeleton":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "hma"

    goto :goto_1
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 315
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 826
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 918
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidHour(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 601
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 311
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMinute(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 605
    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 844
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSource(I)Z
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 609
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "rt"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x1

    .line 491
    const-string v0, "calls"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 492
    const-string/jumbo v0, "music"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 493
    const-string v0, "alarm"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    .line 494
    const-string/jumbo v0, "vibrate"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 495
    const-string/jumbo v0, "light"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 496
    return-void
.end method

.method private static prioritySendersToSource(II)I
    .locals 0
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .prologue
    .line 706
    packed-switch p0, :pswitch_data_0

    .line 710
    .end local p1    # "def":I
    :goto_0
    return p1

    .line 707
    .restart local p1    # "def":I
    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    .line 708
    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    .line 709
    :pswitch_2
    const/4 p1, 0x0

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 574
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 575
    .local v1, "id":Landroid/net/Uri;
    if-nez v1, :cond_0

    move-object v0, v9

    .line 586
    :goto_0
    return-object v0

    .line 576
    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 580
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 581
    .local v6, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 583
    .local v7, "flags":I
    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v8

    .line 585
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v10, "Unable to read condition xml"

    invoke-static {v0, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 586
    goto :goto_0
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 539
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 540
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 541
    const-string/jumbo v3, "snoozing"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 542
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 543
    const-string/jumbo v3, "zen"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 545
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v3, v5, :cond_0

    .line 546
    sget-object v3, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad zen mode in rule xml:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 552
    .end local v0    # "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_0
    return-object v0

    .line 549
    .restart local v0    # "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    const-string v2, "conditionId"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 550
    const-string v2, "component"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 551
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "migration"    # Landroid/service/notification/ZenModeConfig$Migration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 428
    .local v7, "type":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    const/4 v5, 0x0

    .line 441
    :cond_0
    :goto_0
    return-object v5

    .line 429
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 431
    :cond_2
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 432
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v10, "version"

    const/4 v11, 0x2

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 433
    .local v9, "version":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 434
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;

    move-result-object v8

    .line 435
    .local v8, "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    invoke-interface {p1, v8}, Landroid/service/notification/ZenModeConfig$Migration;->migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    goto :goto_0

    .line 437
    .end local v8    # "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    :cond_3
    const-string/jumbo v10, "user"

    iget v11, v5, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->user:I

    .line 438
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_a

    .line 439
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 440
    const/4 v10, 0x3

    if-ne v7, v10, :cond_5

    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 443
    :cond_5
    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    .line 444
    const-string v10, "allow"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 445
    const-string v10, "calls"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 446
    const-string/jumbo v10, "repeatCallers"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 448
    const-string/jumbo v10, "messages"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 449
    const-string/jumbo v10, "reminders"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 451
    const-string v10, "events"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 452
    const-string v10, "from"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 453
    .local v2, "from":I
    const-string v10, "callsFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 454
    .local v1, "callsFrom":I
    const-string/jumbo v10, "messagesFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 455
    .local v4, "messagesFrom":I
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 456
    iput v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 457
    iput v4, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 468
    :goto_2
    invoke-static {v5, p0}, Landroid/service/notification/ZenModeConfig;->miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 458
    :cond_6
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 459
    sget-object v10, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Migrating existing shared \'from\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 461
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_2

    .line 463
    :cond_7
    const/4 v10, 0x1

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 464
    const/4 v10, 0x1

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_2

    .line 471
    .end local v1    # "callsFrom":I
    .end local v2    # "from":I
    .end local v4    # "messagesFrom":I
    :cond_8
    const-string/jumbo v10, "manual"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 472
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v10

    iput-object v10, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_1

    .line 473
    :cond_9
    const-string v10, "automatic"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 474
    const/4 v10, 0x0

    const-string/jumbo v11, "ruleId"

    invoke-interface {p0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "id":Ljava/lang/String;
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 476
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 477
    iget-object v10, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 482
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_a
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Failed to reach END_DOCUMENT"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 613
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 619
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 322
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 324
    :cond_3
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private static sourceToPrioritySenders(II)I
    .locals 0
    .param p0, "source"    # I
    .param p1, "def"    # I

    .prologue
    .line 697
    packed-switch p0, :pswitch_data_0

    .line 701
    .end local p1    # "def":I
    :goto_0
    return p1

    .line 698
    .restart local p1    # "def":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 699
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 700
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    .line 349
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    const-string v0, "anyone"

    goto :goto_0

    .line 345
    :pswitch_1
    const-string v0, "contacts"

    goto :goto_0

    .line 347
    :pswitch_2
    const-string/jumbo v0, "stars"

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 806
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .locals 3
    .param p0, "days"    # [I

    .prologue
    .line 385
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 391
    :goto_0
    return-object v2

    .line 386
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 388
    if-lez v0, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :cond_2
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 908
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "userId"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "calendar"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "reply"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JJI)Landroid/service/notification/Condition;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "now"    # J
    .param p3, "alarm"    # J
    .param p5, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 775
    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {p0, v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 776
    .local v11, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 777
    .local v12, "res":Landroid/content/res/Resources;
    const v3, 0x1040588

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v11, v5, v8

    invoke-virtual {v12, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, "line1":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v4

    .line 779
    .local v4, "id":Landroid/net/Uri;
    new-instance v3, Landroid/service/notification/Condition;

    const-string v5, ""

    const-string v7, ""

    move v10, v9

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v3
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    .line 834
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "days"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 734
    .local v10, "now":J
    if-nez p1, :cond_0

    const-wide/16 v8, 0x2710

    .line 735
    .local v8, "millis":J
    :goto_0
    add-long v2, v10, v8

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    .line 734
    .end local v8    # "millis":J
    :cond_0
    const v0, 0xea60

    mul-int/2addr v0, p1

    int-to-long v8, v0

    goto :goto_0
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .prologue
    .line 742
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 743
    .local v12, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 744
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v4, 0x3c

    move/from16 v0, p3

    if-ge v0, v4, :cond_2

    .line 746
    move/from16 v14, p3

    .line 747
    .local v14, "num":I
    if-eqz p5, :cond_0

    const v16, 0x114000a

    .line 749
    .local v16, "summaryResId":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, "summary":Ljava/lang/String;
    if-eqz p5, :cond_1

    const v13, 0x114000e

    .line 752
    .local v13, "line1ResId":I
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 753
    .local v7, "line1":Ljava/lang/String;
    const v4, 0x1040587

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 768
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    .local v8, "line2":Ljava/lang/String;
    :goto_2
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v5

    .line 769
    .local v5, "id":Landroid/net/Uri;
    new-instance v4, Landroid/service/notification/Condition;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v4

    .line 747
    .end local v5    # "id":Landroid/net/Uri;
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .restart local v14    # "num":I
    :cond_0
    const v16, 0x1140009

    goto :goto_0

    .line 750
    .restart local v6    # "summary":Ljava/lang/String;
    .restart local v16    # "summaryResId":I
    :cond_1
    const v13, 0x114000d

    goto :goto_1

    .line 754
    .end local v6    # "summary":Ljava/lang/String;
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_2
    const/16 v4, 0x5a0

    move/from16 v0, p3

    if-ge v0, v4, :cond_5

    .line 756
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 757
    .restart local v14    # "num":I
    if-eqz p5, :cond_3

    const v16, 0x114000c

    .line 759
    .restart local v16    # "summaryResId":I
    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 760
    .restart local v6    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_4

    const v13, 0x1140010

    .line 762
    .restart local v13    # "line1ResId":I
    :goto_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 763
    .restart local v7    # "line1":Ljava/lang/String;
    const v4, 0x1040587

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 764
    .restart local v8    # "line2":Ljava/lang/String;
    goto :goto_2

    .line 757
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v16    # "summaryResId":I
    :cond_3
    const v16, 0x114000b

    goto :goto_3

    .line 760
    .restart local v6    # "summary":Ljava/lang/String;
    .restart local v16    # "summaryResId":I
    :cond_4
    const v13, 0x114000f

    goto :goto_4

    .line 766
    .end local v6    # "summary":Ljava/lang/String;
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_5
    const v4, 0x1040587

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "line2":Ljava/lang/String;
    move-object v7, v8

    .restart local v7    # "line1":Ljava/lang/String;
    move-object v6, v8

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_2
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, 0x0

    .line 814
    const-string v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-wide v2

    .line 815
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 395
    if-nez p0, :cond_1

    move-object v2, v4

    .line 404
    :cond_0
    :goto_0
    return-object v2

    .line 396
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "tokens":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 398
    :cond_2
    array-length v5, v3

    new-array v2, v5, [I

    .line 399
    .local v2, "rt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 400
    aget-object v5, v3, v1

    invoke-static {v5, v6}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "day":I
    if-ne v0, v6, :cond_3

    move-object v2, v4

    goto :goto_0

    .line 402
    :cond_3
    aput v0, v2, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 10
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 922
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "condition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "event"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    .local v0, "isEvent":Z
    :goto_0
    if-nez v0, :cond_1

    move-object v1, v3

    .line 935
    :goto_1
    return-object v1

    .end local v0    # "isEvent":Z
    :cond_0
    move v0, v4

    .line 922
    goto :goto_0

    .line 928
    .restart local v0    # "isEvent":Z
    :cond_1
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 929
    .local v1, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, -0x2710

    invoke-static {v2, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 930
    const-string v2, "calendar"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 931
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2, v8, v9}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 932
    :cond_2
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 934
    :cond_3
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    goto :goto_1
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 977
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-object v3

    .line 978
    :cond_1
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 979
    .local v1, "i":I
    if-lt v1, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 980
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 981
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 982
    .local v2, "minute":I
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    goto :goto_0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 408
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 410
    .restart local p1    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 417
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    .end local p1    # "defValue":J
    :goto_0
    return-wide p1

    .line 419
    .restart local p1    # "defValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 8
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 848
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "condition"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, "schedule"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    .line 853
    .local v1, "isSchedule":Z
    :goto_0
    if-nez v1, :cond_2

    .line 863
    :cond_0
    :goto_1
    return-object v2

    .end local v1    # "isSchedule":Z
    :cond_1
    move v1, v6

    .line 848
    goto :goto_0

    .line 854
    .restart local v1    # "isSchedule":Z
    :cond_2
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v3

    .line 855
    .local v3, "start":[I
    const-string v4, "end"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v0

    .line 856
    .local v0, "end":[I
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 857
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 858
    .local v2, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v4, "days"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\."

    invoke-static {v4, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 859
    aget v4, v3, v6

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 860
    aget v4, v3, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 861
    aget v4, v0, v6

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 862
    aget v4, v0, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    goto :goto_1
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 986
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 987
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "rt":I
    :goto_0
    return v0

    .restart local v0    # "rt":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 591
    const-string/jumbo v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const-string/jumbo v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    const-string/jumbo v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const-string/jumbo v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    const-string v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 556
    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 559
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    :cond_0
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 563
    const-string v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 566
    const-string v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 571
    :cond_3
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 717
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 718
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 719
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 720
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 722
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 723
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 716
    goto :goto_1

    :cond_2
    move v0, v2

    .line 717
    goto :goto_2

    :cond_3
    move v0, v2

    .line 718
    goto :goto_3

    :cond_4
    move v0, v2

    .line 719
    goto :goto_4

    :cond_5
    move v1, v2

    .line 720
    goto :goto_5
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .prologue
    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 653
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    instance-of v3, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_1

    move v1, v2

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 357
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 358
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAutomaticRuleNames()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 637
    .local v1, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 638
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 378
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 307
    :goto_0
    return v2

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 304
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 305
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 304
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newRuleId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 991
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 4

    .prologue
    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, "priorityCategories":I
    const/4 v0, 0x1

    .line 675
    .local v0, "priorityCallSenders":I
    const/4 v2, 0x1

    .line 676
    .local v2, "priorityMessageSenders":I
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_0

    .line 677
    or-int/lit8 v1, v1, 0x8

    .line 679
    :cond_0
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_1

    .line 680
    or-int/lit8 v1, v1, 0x4

    .line 682
    :cond_1
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v3, :cond_2

    .line 683
    or-int/lit8 v1, v1, 0x2

    .line 685
    :cond_2
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v3, :cond_3

    .line 686
    or-int/lit8 v1, v1, 0x1

    .line 688
    :cond_3
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_4

    .line 689
    or-int/lit8 v1, v1, 0x10

    .line 691
    :cond_4
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v3, v0}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v0

    .line 692
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v3, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    .line 693
    new-instance v3, Landroid/app/NotificationManager$Policy;

    invoke-direct {v3, v1, v0, v2}, Landroid/app/NotificationManager$Policy;-><init>(III)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowCallsFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowMessagesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",automaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",manualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 184
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-eqz v4, :cond_8

    :goto_8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 202
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 203
    .local v2, "len":I
    new-array v1, v2, [Ljava/lang/String;

    .line 204
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 205
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_9

    .line 206
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 207
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v4, v3, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    .line 184
    goto/16 :goto_0

    :cond_1
    move v4, v6

    .line 185
    goto :goto_1

    :cond_2
    move v4, v6

    .line 186
    goto :goto_2

    :cond_3
    move v4, v6

    .line 187
    goto :goto_3

    :cond_4
    move v4, v6

    .line 188
    goto :goto_4

    :cond_5
    move v4, v6

    .line 191
    goto :goto_5

    :cond_6
    move v4, v6

    .line 192
    goto :goto_6

    :cond_7
    move v4, v6

    .line 193
    goto :goto_7

    :cond_8
    move v5, v6

    .line 194
    goto :goto_8

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "ids":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 215
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_a
    return-void

    .line 213
    :cond_a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 499
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const-string/jumbo v4, "user"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    const-string v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    const-string v4, "calls"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const-string/jumbo v4, "repeatCallers"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    const-string/jumbo v4, "messages"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    const-string/jumbo v4, "reminders"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const-string v4, "events"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string/jumbo v4, "music"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    const-string v4, "alarm"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    const-string/jumbo v4, "vibrate"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    const-string/jumbo v4, "light"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    const-string v4, "callsFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    const-string/jumbo v4, "messagesFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    const-string v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_0

    .line 522
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 524
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    :cond_0
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 527
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 528
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 529
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 530
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    const-string/jumbo v4, "ruleId"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 533
    const-string v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    return-void
.end method
