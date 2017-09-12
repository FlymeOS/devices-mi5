.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
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
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 22
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 590
    const/4 v4, 0x0

    .line 591
    .local v4, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 592
    sget-object v5, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v4, Landroid/net/wifi/WifiSsid;

    .line 594
    .restart local v4    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v3, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/wifi/ScanResult;->seen:J

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v3, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/net/wifi/ScanResult;->flags:J

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 626
    .local v21, "n":I
    if-eqz v21, :cond_2

    .line 627
    move/from16 v0, v21

    new-array v5, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 628
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v2, v0, :cond_2

    .line 629
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v6, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v6}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v6, v5, v2

    .line 630
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v5, v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 632
    .local v20, "len":I
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v5, v5, v2

    move/from16 v0, v20

    new-array v6, v0, [B

    iput-object v6, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 633
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v2    # "i":I
    .end local v20    # "len":I
    .end local v21    # "n":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 636
    .restart local v21    # "n":I
    :cond_2
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 640
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
