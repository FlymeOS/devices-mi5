.class final Lcom/miui/whetstone/CloudControlInfo$1;
.super Ljava/lang/Object;
.source "CloudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/CloudControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/CloudControlInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Lcom/miui/whetstone/CloudControlInfo;

    invoke-direct {v0, p1}, Lcom/miui/whetstone/CloudControlInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/CloudControlInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/CloudControlInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/whetstone/CloudControlInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 194
    new-array v0, p1, [Lcom/miui/whetstone/CloudControlInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/CloudControlInfo$1;->newArray(I)[Lcom/miui/whetstone/CloudControlInfo;

    move-result-object v0

    return-object v0
.end method
