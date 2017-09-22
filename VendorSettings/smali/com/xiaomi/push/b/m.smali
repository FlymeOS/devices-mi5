.class public final Lcom/xiaomi/push/b/m;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bcE:Z

.field private bcF:Lcom/google/protobuf/micro/a;

.field private bcq:Z

.field private bcr:Lcom/xiaomi/push/b/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 1669
    sget-object v0, Lcom/google/protobuf/micro/a;->aWw:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/xiaomi/push/b/m;->bcF:Lcom/google/protobuf/micro/a;

    .line 1686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/b/m;->bcr:Lcom/xiaomi/push/b/e;

    .line 1725
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/m;->bbd:I

    .line 1664
    return-void
.end method

.method public static y([B)Lcom/xiaomi/push/b/m;
    .locals 1

    .prologue
    .line 1781
    new-instance v0, Lcom/xiaomi/push/b/m;

    invoke-direct {v0}, Lcom/xiaomi/push/b/m;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/b/m;->q([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/b/m;

    check-cast v0, Lcom/xiaomi/push/b/m;

    return-object v0
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/xiaomi/push/b/m;->bbd:I

    if-gez v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->getSerializedSize()I

    .line 1732
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/m;->bbd:I

    return v0
.end method

.method public HX()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/xiaomi/push/b/m;->bcq:Z

    return v0
.end method

.method public HY()Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/xiaomi/push/b/m;->bcr:Lcom/xiaomi/push/b/e;

    return-object v0
.end method

.method public Ig()Lcom/google/protobuf/micro/a;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/xiaomi/push/b/m;->bcF:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public Ih()Z
    .locals 1

    .prologue
    .line 1671
    iget-boolean v0, p0, Lcom/xiaomi/push/b/m;->bcE:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 1661
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/m;->m(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->Ih()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->Ig()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->HX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/c;)V

    .line 1723
    :cond_1
    return-void
.end method

.method public c(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/m;
    .locals 1

    .prologue
    .line 1690
    if-nez p1, :cond_0

    .line 1691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1693
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/m;->bcq:Z

    .line 1694
    iput-object p1, p0, Lcom/xiaomi/push/b/m;->bcr:Lcom/xiaomi/push/b/e;

    .line 1695
    return-object p0
.end method

.method public d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/m;
    .locals 1

    .prologue
    .line 1673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/m;->bcE:Z

    .line 1674
    iput-object p1, p0, Lcom/xiaomi/push/b/m;->bcF:Lcom/google/protobuf/micro/a;

    .line 1675
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1737
    const/4 v0, 0x0

    .line 1738
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->Ih()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    const/4 v1, 0x1

    .line 1740
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->Ig()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1742
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->HX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1743
    const/4 v1, 0x2

    .line 1744
    invoke-virtual {p0}, Lcom/xiaomi/push/b/m;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1746
    :cond_1
    iput v0, p0, Lcom/xiaomi/push/b/m;->bbd:I

    .line 1747
    return v0
.end method

.method public m(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/m;
    .locals 1

    .prologue
    .line 1755
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 1756
    sparse-switch v0, :sswitch_data_0

    .line 1760
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/m;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1761
    :sswitch_0
    return-object p0

    .line 1766
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->EN()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/m;->d(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/b/m;

    goto :goto_0

    .line 1770
    :sswitch_2
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    .line 1771
    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    .line 1772
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/m;->c(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/m;

    goto :goto_0

    .line 1756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method
