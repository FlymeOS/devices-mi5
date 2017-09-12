.class public Lcom/miui/whetstone/AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/AlarmPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mRestrictTypes:[I

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/miui/whetstone/AlarmPolicy$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AlarmPolicy$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "restrictTypes"    # [I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 12
    iput-object p2, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AlarmPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/AlarmPolicy$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 29
    return-void
.end method
