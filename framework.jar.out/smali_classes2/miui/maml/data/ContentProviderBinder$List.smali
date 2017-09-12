.class Lmiui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 211
    const-string v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 212
    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 213
    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_2

    .line 220
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v12, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement;

    iput-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 221
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_2

    .line 222
    const-string v11, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to find list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_2
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 227
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 228
    .local v3, "columnsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 229
    .local v9, "size":I
    new-array v1, v9, [I

    .line 230
    .local v1, "column":[I
    new-array v8, v9, [Ljava/lang/Object;

    .line 231
    .local v8, "objects":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v11, v1

    if-ge v6, v11, :cond_3

    .line 233
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    aput v11, v1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "ContentProviderBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "illegal column:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v11, v11, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 242
    .local v4, "count":I
    iget v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v4, v11, :cond_4

    .line 243
    iget v4, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 245
    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_0

    .line 246
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v9, :cond_6

    .line 247
    const/4 v11, 0x0

    aput-object v11, v8, v7

    .line 248
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .line 249
    .local v2, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    aget v0, v1, v7

    .line 250
    .local v0, "col":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 251
    sget-object v11, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 262
    sget-object v11, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_1

    .line 246
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 253
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 256
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 257
    .local v10, "valueBytes":[B
    if-eqz v10, :cond_5

    .line 258
    const/4 v11, 0x0

    array-length v12, v10

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 264
    .end local v10    # "valueBytes":[B
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 267
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 270
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 273
    :pswitch_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v7

    goto :goto_4

    .line 280
    .end local v0    # "col":I
    .end local v2    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    :cond_6
    iget-object v11, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11, v8}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 262
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
