.class public Lcom/miui/whetstone/WhetstoneResult;
.super Ljava/lang/Object;
.source "WhetstoneResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstoneResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I

.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneResult$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/whetstone/WhetstoneResult;-><init>(ILjava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    .line 20
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstoneResult$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
