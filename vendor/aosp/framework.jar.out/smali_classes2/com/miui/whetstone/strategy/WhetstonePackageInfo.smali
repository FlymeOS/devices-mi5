.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAP_LOWMEM_KILL:I = 0x1

.field public static final CAP_LOWMEM_THRESOLD_KILL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ANDROID_PERSISTENT_APP:I = 0x40000

.field public static final FLAG_APP_STOP:I = 0x40000000

.field public static final FLAG_APP_SYSTEM:I = -0x80000000

.field public static final FLAG_BACKGROUND_START:I = 0x100

.field public static final FLAG_BITMAPCACHE:I = 0x1

.field public static final FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final FLAG_DESTORYACTIVITY:I = 0x4

.field public static final FLAG_DISABLEOPENGL:I = 0x2

.field public static final FLAG_DISABLE_WAKELOCK:I = 0x4000

.field public static final FLAG_ONEKEY_CLEAN_NO_UI_WHITE:I = 0x20000

.field public static final FLAG_ONEKEY_CLEAN_WHITE:I = 0x10000

.field public static final FLAG_SOFT_RESET:I = 0x400

.field public static final FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final FLAG_TRIMHEAPS:I = 0x40

.field public static final FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final FLAG_TRIMSERVICES:I = 0x10

.field public static final FLAG_TRIM_OPENGL:I = 0x200

.field public static final FLAG_UPDATESETTING:I = 0x8

.field public static final FLAG_ZRAM:I = 0x80

.field public static final TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final TYPE_AUTO_START:I = 0x40

.field public static final TYPE_GAME:I = 0x2

.field public static final TYPE_IM_PUSH:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x20

.field public static final TYPE_LARGE_MEMORY:I = 0x80

.field public static final TYPE_MUSIC:I = 0x4

.field public static final TYPE_NOTE:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public capacity:I

.field public flag:I

.field public mScreenOffClear:Z

.field public nonUiMemoryThresold:I

.field public packageName:Ljava/lang/String;

.field public samePackageList:Ljava/lang/String;

.field public type:I

.field public uiMemoryThresold:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "samePList"    # Ljava/lang/String;
    .param p3, "packageCapability"    # I
    .param p4, "uiThreshold"    # I
    .param p5, "nonUiThreshold"    # I
    .param p6, "screenOffClear"    # Z

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->samePackageList:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->capacity:I

    .line 78
    iput p4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    .line 79
    iput p5, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    .line 80
    iput-boolean p6, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 81
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 82
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 67
    if-eqz p2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 68
    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 69
    iput-boolean v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    .line 70
    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1
    .param p1, "flg"    # I

    .prologue
    .line 106
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 107
    return-void
.end method

.method public addType(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 103
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return v0
.end method

.method public isDisableWakelock()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isType(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 98
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 134
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uiMemoryThresold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nonUiMemoryThresold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "hexFlag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 159
    const-string v2, ",BitmapCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 162
    const-string v2, ",DestoryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 165
    const-string v2, ",isOPENGLDiable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 168
    const-string v2, ",TRIMHEAPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_3
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    .line 171
    const-string v2, ",TRIM_OPENGL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_4
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    .line 174
    const-string v2, ",SOFT_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_5
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 177
    const-string v2, ",APP_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_6
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 180
    const-string v2, ",ZRAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_7
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    .line 183
    const-string v2, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_8
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    .line 186
    const-string v2, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_9
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_a

    .line 189
    const-string v2, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "] Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    .line 193
    const-string v2, ",IM_PUSH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_b
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 196
    const-string v2, ",Game"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_c
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 199
    const-string v2, ",note"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_d
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e

    .line 202
    const-string v2, ",notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_e
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_f

    .line 205
    const-string v2, ",AUTO_START"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_f
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10

    .line 208
    const-string v2, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_10
    const-string v2, "] }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
