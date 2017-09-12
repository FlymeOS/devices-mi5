.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 19
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 790
    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 791
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 793
    .local v3, "onHost":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 795
    .local v18, "numStaticGroups":I
    if-lez v18, :cond_0

    .line 796
    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 798
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v6, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 800
    .local v16, "numDynamicGroups":I
    if-lez v16, :cond_1

    .line 801
    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 803
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    .line 804
    .local v7, "requiresUnlock":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 805
    .local v8, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 806
    .local v9, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 807
    .local v10, "settingsActivityName":Ljava/lang/String;
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 809
    .local v11, "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v12, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 811
    .local v17, "numGroups":I
    if-lez v17, :cond_2

    .line 812
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 814
    :cond_2
    const/4 v13, 0x0

    .line 815
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 816
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 817
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_3

    .line 818
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    .restart local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, -0x1

    .line 822
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v14, 0x1

    .line 823
    .local v14, "modifiable":Z
    :goto_2
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    return-object v1

    .line 792
    .end local v3    # "onHost":Z
    .end local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v7    # "requiresUnlock":Z
    .end local v8    # "bannerResource":I
    .end local v9    # "uid":I
    .end local v10    # "settingsActivityName":Ljava/lang/String;
    .end local v11    # "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .end local v12    # "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "modifiable":Z
    .end local v16    # "numDynamicGroups":I
    .end local v17    # "numGroups":I
    .end local v18    # "numStaticGroups":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 803
    .restart local v3    # "onHost":Z
    .restart local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v16    # "numDynamicGroups":I
    .restart local v18    # "numStaticGroups":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 822
    .restart local v7    # "requiresUnlock":Z
    .restart local v8    # "bannerResource":I
    .restart local v9    # "uid":I
    .restart local v10    # "settingsActivityName":Ljava/lang/String;
    .restart local v11    # "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .restart local v12    # "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    .restart local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "numGroups":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 830
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
