.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$2;,
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiui/date/Calendar;


# instance fields
.field private mAmPm:Lmiui/maml/data/IndexedVariable;

.field protected mCalendar:Lmiui/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/data/IndexedVariable;

.field private mDateLunar:Lmiui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lmiui/maml/data/IndexedVariable;

.field private mHour12:Lmiui/maml/data/IndexedVariable;

.field private mHour24:Lmiui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/maml/data/IndexedVariable;

.field private mMonth:Lmiui/maml/data/IndexedVariable;

.field private mMonth1:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunar:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

.field private mNextAlarm:Lmiui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/data/IndexedVariable;

.field private mTime:Lmiui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

.field private mTimeSys:Lmiui/maml/data/IndexedVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x16
        0x15
        0x14
        0x12
        0x9
    .end array-data
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 83
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;
    .param p2, "accuracy"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v5, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 53
    new-instance v5, Lmiui/date/Calendar;

    invoke-direct {v5}, Lmiui/date/Calendar;-><init>()V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 59
    const/4 v5, -0x1

    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 76
    new-instance v5, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "acc":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, "arr$":[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 91
    .local v0, "a":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    move-object v1, v0

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "a":Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v2    # "arr$":[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    if-nez v1, :cond_2

    .line 96
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 97
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-direct {p0, v1}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;
    .param p2, "accuracy"    # Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .prologue
    .line 103
    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 76
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 104
    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/data/DateTimeVariableUpdater;

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 216
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 219
    .local v4, "currentTimeMillis":J
    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v9, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 221
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    .local v0, "arr$":[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget v1, v0, v6

    .line 222
    .local v1, "f":I
    iget v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v1, v9, :cond_4

    .line 227
    .end local v1    # "f":I
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    .line 230
    .local v8, "timeFormat":I
    :cond_1
    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v9}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 231
    .local v2, "currentTime":J
    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v9, v10, v2

    if-nez v9, :cond_2

    iget v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    if-eq v9, v8, :cond_3

    .line 232
    :cond_2
    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 233
    iget-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v12, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 234
    iput v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    .line 235
    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    iget v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 236
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v12, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v12, v4

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    return-void

    .line 224
    .end local v2    # "currentTime":J
    .end local v8    # "timeFormat":I
    .restart local v1    # "f":I
    :cond_4
    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v9, v1, v8}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .prologue
    .line 202
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    .line 205
    :cond_0
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 206
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 8
    .param p1, "accuracy"    # Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .prologue
    const-wide/32 v6, 0xea60

    const/16 v5, 0x14

    const/4 v4, 0x1

    .line 108
    const-string v1, "DateTimeVariableUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init with accuracy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 128
    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    .line 132
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 133
    .local v0, "vars":Lmiui/maml/data/Variables;
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    .line 134
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "month"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    .line 135
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "month1"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    .line 136
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "date"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    .line 138
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    .line 139
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v2, "year_lunar1864"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    .line 140
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "month_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    .line 141
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "month_lunar_leap"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    .line 142
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "date_lunar"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    .line 144
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "day_of_week"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    .line 145
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "ampm"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    .line 146
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "hour12"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    .line 147
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "hour24"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    .line 148
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "minute"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    .line 149
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "second"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    .line 150
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "time"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    .line 151
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "time_sys"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    .line 152
    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 153
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "next_alarm_time"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    .line 155
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "time_format"

    invoke-direct {v1, v2, v0, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    .line 156
    return-void

    .line 111
    .end local v0    # "vars":Lmiui/maml/data/Variables;
    :pswitch_0
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 112
    const/16 v1, 0x9

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 115
    :pswitch_1
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 116
    const/16 v1, 0x12

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 119
    :pswitch_2
    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 120
    iput v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 123
    :pswitch_3
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 124
    const/16 v1, 0x15

    iput v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "nextAlarm":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method private updateTime()V
    .locals 11

    .prologue
    const/16 v10, 0x12

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 243
    .local v2, "currentTimeMillis":J
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    long-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 245
    const-wide/16 v8, 0x3e8

    div-long v0, v2, v8

    .line 246
    .local v0, "currentTime":J
    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v7, v0, v8

    if-eqz v7, :cond_0

    .line 247
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v7, v2, v3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 249
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    .line 250
    .local v6, "year":I
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    .line 251
    .local v5, "month":I
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    .line 252
    .local v4, "date":I
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 253
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 254
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0xc

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 255
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 256
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v6

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 257
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 258
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    add-int/lit8 v8, v5, 0x1

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 259
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v4

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 261
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 262
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 264
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 265
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 266
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 267
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 268
    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 270
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 272
    .end local v4    # "date":I
    .end local v5    # "month":I
    .end local v6    # "year":I
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    .line 197
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    .line 161
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 162
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 163
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 164
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 276
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 277
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 278
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->pause()V

    .line 190
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method protected resetCalendar()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    .line 183
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    .line 186
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->resume()V

    .line 174
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 177
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    .line 178
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 179
    return-void
.end method

.method public tick(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 168
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 169
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 170
    return-void
.end method
