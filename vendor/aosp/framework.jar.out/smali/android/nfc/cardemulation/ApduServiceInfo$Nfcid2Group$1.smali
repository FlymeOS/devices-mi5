.class final Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, "category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 946
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 947
    .local v8, "syscodelistSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v2, "syscodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v8, :cond_0

    .line 949
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 952
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 953
    .local v7, "optparamlistSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v3, "optparamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v7, :cond_1

    .line 955
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 958
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 959
    .local v6, "nfcid2listSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v1, "nfcid2List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v6, :cond_2

    .line 961
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 963
    :cond_2
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 939
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 968
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 939
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    move-result-object v0

    return-object v0
.end method
