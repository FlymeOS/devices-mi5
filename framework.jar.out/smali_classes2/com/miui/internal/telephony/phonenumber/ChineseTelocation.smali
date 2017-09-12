.class public Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private mAllowTelocation:Z

.field private mContext:Landroid/content/Context;

.field private mCustomLocationObserver:Landroid/database/ContentObserver;

.field private mGroupCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    return-void
.end method

.method private findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 148
    .local v4, "location":Ljava/lang/String;
    if-lez p1, :cond_0

    .line 149
    iget-object v6, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "location":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 152
    .restart local v4    # "location":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p4, v6, :cond_1

    .line 158
    const/4 v5, 0x1

    .line 159
    .local v5, "matched":Z
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p3, v0

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 162
    const/4 v5, 0x0

    .line 166
    :cond_2
    if-eqz v5, :cond_1

    .line 167
    iget-object v6, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "location":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "location":Ljava/lang/String;
    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "matched":Z
    :cond_4
    if-nez v4, :cond_5

    .line 172
    const-string v4, ""

    .line 174
    :cond_5
    return-object v4
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "countryIso":Ljava/lang/String;
    const-string v4, "country_detector"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 232
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 234
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 240
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 242
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 244
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v1

    .line 237
    .restart local v0    # "country":Landroid/location/Country;
    :cond_2
    const-string v4, "ChineseTelocation"

    const-string v5, "getCurrentCountryIso CountryDetector.detectCountry() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->sInstance:Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    .line 117
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$1;-><init>(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    new-instance v1, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation$2;-><init>(Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    .line 141
    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    return-void
.end method

.method private updateCustomLocation()V
    .locals 12

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    iget-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-eqz v0, :cond_5

    .line 64
    const/4 v6, 0x0

    .line 66
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_4

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 76
    .local v11, "type":I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "number":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "location":Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    const/4 v10, 0x0

    .line 85
    .local v10, "start":I
    const-string v0, "+86"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/4 v10, 0x3

    .line 90
    :cond_1
    :goto_1
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v10, v1, v2}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    .line 91
    .local v7, "id":I
    if-eqz v7, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    .end local v7    # "id":I
    .end local v8    # "location":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v11    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 87
    .restart local v8    # "location":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v10    # "start":I
    .restart local v11    # "type":I
    :cond_3
    :try_start_1
    const-string v0, "0086"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v10, 0x4

    goto :goto_1

    .line 96
    .end local v10    # "start":I
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v8    # "location":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_4
    if-eqz v6, :cond_5

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTelocationSetting()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    .line 57
    invoke-direct {p0}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    .line 58
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 48
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 49
    return-void
.end method

.method public getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 200
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/CharSequence;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 208
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    .line 215
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "withAreaCode"    # Z

    .prologue
    .line 178
    iget-object v2, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    .line 183
    :cond_0
    iget-boolean v2, p0, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v2, :cond_2

    .line 184
    const-string v1, ""

    .line 196
    :cond_1
    :goto_0
    return-object v1

    .line 187
    :cond_2
    const/4 v0, -0x1

    .line 188
    .local v0, "id":I
    if-eqz p5, :cond_3

    .line 189
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, p4, v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 192
    :cond_3
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 194
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4, p5}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 204
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
