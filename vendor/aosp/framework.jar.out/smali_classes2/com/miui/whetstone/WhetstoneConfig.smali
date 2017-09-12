.class public Lcom/miui/whetstone/WhetstoneConfig;
.super Ljava/lang/Object;
.source "WhetstoneConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEEP_CLEAN_TYPE_LOCK_SCREEN:I = 0x4

.field public static final DEEP_CLEAN_TYPE_NORMAL:I = 0x0

.field public static final DEEP_CLEAN_TYPE_ONE_KEY:I = 0x2

.field public static final DEEP_CLEAN_TYPE_UNKNOW:I = -0x1


# instance fields
.field mType:I

.field mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/miui/whetstone/WhetstoneConfig$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneConfig$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstoneConfig$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 21
    iput p2, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getDeepCleanType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    return v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    .line 52
    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 46
    :cond_0
    iget v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
