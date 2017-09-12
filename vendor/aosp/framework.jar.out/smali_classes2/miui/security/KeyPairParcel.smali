.class public final Lmiui/security/KeyPairParcel;
.super Ljava/lang/Object;
.source "KeyPairParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/security/KeyPairParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKeyPair:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lmiui/security/KeyPairParcel$1;

    invoke-direct {v0}, Lmiui/security/KeyPairParcel$1;-><init>()V

    sput-object v0, Lmiui/security/KeyPairParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lmiui/security/KeyPairParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/security/KeyPairParcel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/security/KeyPairParcel$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lmiui/security/KeyPairParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 0
    .param p1, "kp"    # Ljava/security/KeyPair;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/security/KeyPairParcel;->mKeyPair:Ljava/security/KeyPair;

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/security/KeyPairParcel;->mKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPair;

    iput-object v0, p0, Lmiui/security/KeyPairParcel;->mKeyPair:Ljava/security/KeyPair;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/security/KeyPairParcel;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 35
    return-void
.end method
