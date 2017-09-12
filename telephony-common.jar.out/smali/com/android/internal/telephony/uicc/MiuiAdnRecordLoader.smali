.class public Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
.super Landroid/os/Handler;
.source "MiuiAdnRecordLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$1;,
        Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
    }
.end annotation


# static fields
.field private static final EVENT_ADN_LOAD_DONE:I = 0x2

.field private static final EVENT_ADN_SIZE_LOAD_DONE:I = 0x1

.field private static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT_SIZE_LOAD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;-><init>()V

    return-void
.end method

.method public static getLoader()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
    .locals 1

    .prologue
    .line 103
    # getter for: Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->LOADER:Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;
    invoke-static {}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->access$100()Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 146
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v11, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;

    .line 148
    .local v11, "context":Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 315
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iput-object v2, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 319
    :goto_1
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 321
    :cond_1
    return-void

    .line 150
    :pswitch_0
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v17, v2

    check-cast v17, [I

    .line 159
    .local v17, "recordSize":[I
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 160
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_3
    iget v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    const/4 v4, 0x0

    aget v4, v17, v4

    iget v5, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget v3, v17, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    .line 173
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x2

    aget v5, v17, v5

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v3, 0x0

    aget v3, v17, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->buildAdnString(I)Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;

    move-result-object v10

    .line 179
    .local v10, "buildAdnResult":Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    iget v2, v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    if-eqz v2, :cond_4

    .line 180
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    iget v3, v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->result:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 182
    :cond_4
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    iget v4, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    iget-object v5, v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;->adnStr:[B

    iget-object v6, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->pin2:Ljava/lang/String;

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 190
    .end local v10    # "buildAdnResult":Lcom/android/internal/telephony/uicc/MiuiAdnRecord$BuildAdnResult;
    .end local v17    # "recordSize":[I
    :pswitch_4
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 191
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 193
    :cond_5
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v17, v2

    check-cast v17, [I

    .line 199
    .restart local v17    # "recordSize":[I
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    .line 200
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 204
    :cond_6
    const/4 v2, 0x0

    aget v2, v17, v2

    iput v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extentionRecordSize:I

    .line 206
    iget v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 209
    :pswitch_5
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    const/4 v4, 0x0

    aget v4, v17, v4

    iget-object v5, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v5, v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 214
    :pswitch_6
    const/4 v2, 0x0

    iput v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    .line 215
    iget v15, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    .local v15, "i":I
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "l":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 216
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 217
    .local v8, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    const/4 v4, 0x0

    aget v4, v17, v4

    iget v5, v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v6, 0x4

    iget v7, v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    add-int/lit8 v7, v7, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 220
    iput v15, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    goto/16 :goto_0

    .line 215
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 230
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v15    # "i":I
    .end local v16    # "l":I
    .end local v17    # "recordSize":[I
    :pswitch_7
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 231
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 233
    :cond_8
    iget v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 236
    :pswitch_8
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_9

    .line 237
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 239
    :cond_9
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v12, v2

    check-cast v12, [B

    .line 240
    .local v12, "data":[B
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    iget v4, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    invoke-direct {v2, v3, v4, v12}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 241
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 242
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 244
    :cond_a
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 250
    .end local v12    # "data":[B
    :pswitch_9
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_b

    .line 251
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 254
    :cond_b
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    .line 255
    .local v13, "datas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v14, 0x0

    .line 256
    .local v14, "hasExtendedRecord":Z
    const/4 v15, 0x0

    .restart local v15    # "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "s":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_d

    .line 257
    new-instance v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->efid:I

    add-int/lit8 v4, v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v8, v3, v4, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(II[B)V

    .line 258
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    if-nez v14, :cond_c

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 260
    const/4 v14, 0x1

    .line 256
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 264
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    :cond_d
    if-eqz v14, :cond_e

    .line 265
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 267
    :cond_e
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 273
    .end local v13    # "datas":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "hasExtendedRecord":Z
    .end local v15    # "i":I
    .end local v18    # "s":I
    :pswitch_a
    iput-object v11, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 280
    :pswitch_b
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 281
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 283
    :cond_f
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_10

    .line 284
    new-instance v2, Lcom/android/internal/telephony/MiuiIccProviderException;

    const/16 v3, -0x3e9

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/MiuiIccProviderException;-><init>(I)V

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 286
    :cond_10
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v12, v2

    check-cast v12, [B

    .line 287
    .restart local v12    # "data":[B
    iget v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->type:I

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 290
    :pswitch_c
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->appendExtRecord([B)V

    .line 291
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->adn:Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 295
    :pswitch_d
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->appendExtRecord([B)V

    .line 296
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    .line 297
    iget v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    add-int/lit8 v15, v2, 0x1

    .restart local v15    # "i":I
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16    # "l":I
    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 298
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->loadedAdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .line 299
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 300
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    iget v3, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extensionEfid:I

    iget v4, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->extentionRecordSize:I

    iget v5, v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mExtRecord:I

    const/4 v6, 0x4

    iget v7, v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->mRecordNumber:I

    add-int/lit8 v7, v7, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    .line 302
    add-int/lit8 v2, v15, 0x1

    iput v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->recordIndex:I

    .line 303
    const/4 v2, 0x0

    iput-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 297
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 317
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v12    # "data":[B
    .end local v15    # "i":I
    .end local v16    # "l":I
    :cond_12
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->onLoaded:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    if-ne v2, v11, :cond_13

    const/4 v2, 0x0

    :goto_5
    iput-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    iget-object v2, v11, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->result:Ljava/lang/Object;

    goto :goto_5

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_b
    .end packed-switch

    .line 164
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 206
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 233
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 287
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public loadAllFromEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IILandroid/os/Message;)V
    .locals 3
    .param p1, "iccFile"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "efid"    # I
    .param p3, "extensionEfid"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IILandroid/os/Message;)V

    .line 122
    .local v0, "context":Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 123
    return-void
.end method

.method public loadFromEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IIILandroid/os/Message;)V
    .locals 6
    .param p1, "iccFile"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "efid"    # I
    .param p3, "extensionEfid"    # I
    .param p4, "recordIndex"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IIILandroid/os/Message;)V

    .line 112
    .local v0, "context":Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 113
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "iccFile"    # Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "efid"    # I
    .param p4, "extensionEfid"    # I
    .param p5, "recordIndex"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 139
    new-instance v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;-><init>(Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;IIILcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 140
    .local v0, "context":Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader$Context;->iccFile:Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 141
    return-void
.end method
