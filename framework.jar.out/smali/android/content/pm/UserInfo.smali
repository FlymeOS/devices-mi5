.class public Landroid/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final FLAG__MASK_XSPACE_PROFILE_TYPE:I = 0xf00000

.field public static final NO_PROFILE_GROUP_ID:I = -0x1

.field public static final SS_FLAG_ENCRYPT_SPACE:I = 0x40000000

.field public static final SS_FLAG_HIDDEN_SPACE:I = 0x20000000

.field public static final SS_FLAG_MANAGED_SPACE:I = -0x80000000

.field public static final SS_FLAG_MASK_SPACE_TYPE:I = -0x1000000

.field public static final SS_FLAG_SPACE:I = 0x10000000


# instance fields
.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileGroupId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Landroid/content/pm/UserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    .line 139
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 140
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 141
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 205
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 206
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 207
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 208
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 209
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 210
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 211
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 212
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 213
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 262
    return-void

    :cond_0
    move v0, v2

    .line 259
    goto :goto_0

    :cond_1
    move v1, v2

    .line 261
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/UserInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/UserInfo$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncryptedSpace()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 175
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    .line 179
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagedProfile()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagedSpace()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 171
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpace()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000000

    .line 183
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSwitchTo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fw.show_hidden_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return-void

    :cond_0
    move v0, v2

    .line 236
    goto :goto_0

    :cond_1
    move v1, v2

    .line 238
    goto :goto_1
.end method
