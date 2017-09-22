.class public final Lcom/xiaomi/push/b/f;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbH:Z

.field private bbI:Ljava/lang/String;

.field private bbJ:Z

.field private bbK:Ljava/lang/String;

.field private bbL:Z

.field private bbM:Ljava/lang/String;

.field private bbN:Z

.field private bbO:Ljava/lang/String;

.field private bbP:Z

.field private bbQ:Ljava/lang/String;

.field private bbR:Z

.field private bbS:Ljava/lang/String;

.field private bbd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1243
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbI:Ljava/lang/String;

    .line 1260
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbK:Ljava/lang/String;

    .line 1277
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbM:Ljava/lang/String;

    .line 1294
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbO:Ljava/lang/String;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbQ:Ljava/lang/String;

    .line 1328
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/f;->bbS:Ljava/lang/String;

    .line 1380
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/f;->bbd:I

    .line 1238
    return-void
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/xiaomi/push/b/f;->bbd:I

    if-gez v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getSerializedSize()I

    .line 1387
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/f;->bbd:I

    return v0
.end method

.method public HA()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbN:Z

    return v0
.end method

.method public HB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbQ:Ljava/lang/String;

    return-object v0
.end method

.method public HC()Z
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbP:Z

    return v0
.end method

.method public HD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbS:Ljava/lang/String;

    return-object v0
.end method

.method public HE()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbR:Z

    return v0
.end method

.method public Hv()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbH:Z

    return v0
.end method

.method public Hw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbK:Ljava/lang/String;

    return-object v0
.end method

.method public Hx()Z
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbJ:Z

    return v0
.end method

.method public Hy()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbL:Z

    return v0
.end method

.method public Hz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbO:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1235
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/f;->f(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1370
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1372
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HC()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1375
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1376
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1378
    :cond_5
    return-void
.end method

.method public dC(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbH:Z

    .line 1248
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbI:Ljava/lang/String;

    .line 1249
    return-object p0
.end method

.method public dD(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbJ:Z

    .line 1265
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbK:Ljava/lang/String;

    .line 1266
    return-object p0
.end method

.method public dE(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbL:Z

    .line 1282
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbM:Ljava/lang/String;

    .line 1283
    return-object p0
.end method

.method public dF(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbN:Z

    .line 1299
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbO:Ljava/lang/String;

    .line 1300
    return-object p0
.end method

.method public dG(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbP:Z

    .line 1316
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbQ:Ljava/lang/String;

    .line 1317
    return-object p0
.end method

.method public dH(Ljava/lang/String;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/f;->bbR:Z

    .line 1333
    iput-object p1, p0, Lcom/xiaomi/push/b/f;->bbS:Ljava/lang/String;

    .line 1334
    return-object p0
.end method

.method public f(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/f;
    .locals 1

    .prologue
    .line 1426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1427
    sparse-switch v0, :sswitch_data_0

    .line 1431
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/f;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    :sswitch_0
    return-object p0

    .line 1437
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dC(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1441
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dD(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dE(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1449
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dF(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1453
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dG(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1457
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/f;->dH(Ljava/lang/String;)Lcom/xiaomi/push/b/f;

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbM:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1393
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hv()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    const/4 v1, 0x2

    .line 1399
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    const/4 v1, 0x3

    .line 1403
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HA()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1406
    const/4 v1, 0x4

    .line 1407
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->Hz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HC()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1410
    const/4 v1, 0x5

    .line 1411
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1414
    const/4 v1, 0x6

    .line 1415
    invoke-virtual {p0}, Lcom/xiaomi/push/b/f;->HD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1417
    :cond_5
    iput v0, p0, Lcom/xiaomi/push/b/f;->bbd:I

    .line 1418
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/xiaomi/push/b/f;->bbI:Ljava/lang/String;

    return-object v0
.end method
