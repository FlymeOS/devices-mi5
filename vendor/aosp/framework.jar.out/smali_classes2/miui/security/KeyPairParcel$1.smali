.class final Lmiui/security/KeyPairParcel$1;
.super Ljava/lang/Object;
.source "KeyPairParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/KeyPairParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/security/KeyPairParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lmiui/security/KeyPairParcel$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/security/KeyPairParcel;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/security/KeyPairParcel;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    new-instance v0, Lmiui/security/KeyPairParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/security/KeyPairParcel;-><init>(Landroid/os/Parcel;Lmiui/security/KeyPairParcel$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lmiui/security/KeyPairParcel$1;->newArray(I)[Lmiui/security/KeyPairParcel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/security/KeyPairParcel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 28
    new-array v0, p1, [Lmiui/security/KeyPairParcel;

    return-object v0
.end method
