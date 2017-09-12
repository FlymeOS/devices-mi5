.class public Lcom/miui/whetstone/WhetstonePackageState;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;,
        Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;,
        Lcom/miui/whetstone/WhetstonePackageState$UserState;,
        Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
    }
.end annotation


# static fields
.field public static final CLOUD_USERID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstonePackageState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final SERVICE_RESTART:Ljava/lang/String; = "Restart: AMS"

.field public static final TAG:Ljava/lang/String; = "WhetstonePackageState"

.field public static final WPS_CHECK_FALSE:I = -0x1

.field public static final WPS_CHECK_TRUE:I = 0x1

.field public static final WPS_FEATURE_ACTIVITY:I = 0x1

.field public static final WPS_FEATURE_ALL_OFF:I = 0x0

.field public static final WPS_FEATURE_ALL_OPEN:I = 0xf

.field public static final WPS_FEATURE_FOREGROUND_OFF:I = -0x80000000

.field public static final WPS_FEATURE_PROVIDER:I = 0x8

.field public static final WPS_FEATURE_RECEIVER:I = 0x4

.field public static final WPS_FEATURE_SERVICE:I = 0x2

.field public static final WPS_START_BY_ACTIVITY:I = 0x1

.field public static final WPS_START_BY_ALL:I = 0xf

.field public static final WPS_START_BY_BROADCAST_INTENT:I = 0x4

.field public static final WPS_START_BY_DEFAULT:I = 0x0

.field public static final WPS_START_BY_FOREGROUND_OFF:I = -0x80000000

.field public static final WPS_START_BY_PROVIDER:I = 0x8

.field public static final WPS_START_BY_RECEIVER:I = 0x4

.field public static final WPS_START_BY_SERVICE:I = 0x2

.field public static final WPS_START_FORBIDDEN:I


# instance fields
.field private mCloudState:Z

.field private mPackageName:Ljava/lang/String;

.field private mUserState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/whetstone/WhetstonePackageState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    sput-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    .line 59
    new-instance v0, Lcom/miui/whetstone/WhetstonePackageState$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstonePackageState$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstonePackageState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstonePackageState;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstonePackageState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstonePackageState$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstonePackageState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/whetstone/WhetstonePackageState;)V
    .locals 6
    .param p1, "state"    # Lcom/miui/whetstone/WhetstonePackageState;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-object v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    .line 103
    iget-object v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v5, v2}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Lcom/miui/whetstone/WhetstonePackageState$UserState;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    :cond_0
    iget-boolean v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    iput-boolean v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/whetstone/WhetstonePackageState;-><init>(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cloudState"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    .line 91
    iput-boolean p2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    .line 92
    return-void
.end method


# virtual methods
.method public declared-synchronized countBlockDebug(ILjava/lang/String;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 306
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 307
    iget-object v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    invoke-virtual {v1, p1, p2}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->addDeniedRecord(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 169
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 170
    iget-object v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    return-object v1

    .line 172
    :cond_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p1}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
.end method

.method public declared-synchronized getBlockedCount(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 312
    monitor-enter p0

    const/4 v1, 0x0

    .line 313
    .local v1, "out":I
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 314
    .local v2, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    iget-object v3, v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->getCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v1, v3

    .line 315
    goto :goto_0

    .line 316
    .end local v2    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :cond_0
    monitor-exit p0

    return v1

    .line 312
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMask(I)I
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 189
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 190
    iget v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    return v1

    .line 192
    :cond_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p1}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isControlledByCloud()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "sz":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .local v4, "userId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "additionalInfo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "mask":I
    iget-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v8, v0, v2, v4}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Ljava/lang/String;II)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "additionalInfo":Ljava/lang/String;
    .end local v2    # "mask":I
    .end local v4    # "userId":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    .line 145
    return-void

    .line 144
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setAdditionalInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "additionalInfo"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 179
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 180
    iput-object p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p2}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCloudControl(Z)V
    .locals 1
    .param p1, "cloudable"    # Z

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMask(II)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 199
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 200
    iput p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p2}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(ILjava/lang/String;I)V
    .locals 4
    .param p1, "startMask"    # I
    .param p2, "additionalInfo"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 148
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 150
    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    .line 151
    iput-object p2, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    .line 152
    iput p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v3, p2, p1, p3}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-boolean v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "This package is controlled by Cloud \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .line 225
    .local v1, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    invoke-virtual {v1}, Lcom/miui/whetstone/WhetstonePackageState$UserState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :cond_0
    const-string v3, "This package is not controlled by Cloud \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 124
    .local v2, "sz":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    iget-object v3, v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    iget v3, v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 131
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    :cond_0
    iget-boolean v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void

    .line 131
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
