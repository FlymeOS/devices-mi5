.class public final Lcom/xiaomi/push/b/h;
.super Lcom/google/protobuf/micro/c;
.source "ChannelMessage.java"


# instance fields
.field private bbd:I

.field private bcb:I

.field private bcc:Z

.field private bcd:Ljava/lang/String;

.field private bce:Z

.field private bcf:Ljava/lang/String;

.field private bcg:Z

.field private bch:Ljava/lang/String;

.field private bci:Z

.field private bcj:I

.field private bck:Z

.field private bcl:Ljava/lang/String;

.field private bcm:Z

.field private bcn:Ljava/lang/String;

.field private bco:Z

.field private bcp:Ljava/lang/String;

.field private bcq:Z

.field private bcr:Lcom/xiaomi/push/b/e;

.field private bcs:Z

.field private bct:I

.field private hasVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    .line 594
    iput v1, p0, Lcom/xiaomi/push/b/h;->bcb:I

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcd:Ljava/lang/String;

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcf:Ljava/lang/String;

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bch:Ljava/lang/String;

    .line 662
    iput v1, p0, Lcom/xiaomi/push/b/h;->bcj:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcl:Ljava/lang/String;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcn:Ljava/lang/String;

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcp:Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/b/h;->bcr:Lcom/xiaomi/push/b/e;

    .line 750
    iput v1, p0, Lcom/xiaomi/push/b/h;->bct:I

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/h;->bbd:I

    .line 589
    return-void
.end method


# virtual methods
.method public EY()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/xiaomi/push/b/h;->bbd:I

    if-gez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getSerializedSize()I

    .line 825
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/b/h;->bbd:I

    return v0
.end method

.method public HM()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->hasVersion:Z

    return v0
.end method

.method public HN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcf:Ljava/lang/String;

    return-object v0
.end method

.method public HO()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bce:Z

    return v0
.end method

.method public HP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bch:Ljava/lang/String;

    return-object v0
.end method

.method public HQ()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcg:Z

    return v0
.end method

.method public HR()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/xiaomi/push/b/h;->bcj:I

    return v0
.end method

.method public HS()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bci:Z

    return v0
.end method

.method public HT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcl:Ljava/lang/String;

    return-object v0
.end method

.method public HU()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bck:Z

    return v0
.end method

.method public HV()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcm:Z

    return v0
.end method

.method public HW()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bco:Z

    return v0
.end method

.method public HX()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcq:Z

    return v0
.end method

.method public HY()Lcom/xiaomi/push/b/e;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcr:Lcom/xiaomi/push/b/e;

    return-object v0
.end method

.method public HZ()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/xiaomi/push/b/h;->bct:I

    return v0
.end method

.method public Ia()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcs:Z

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/b/h;->h(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 737
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcq:Z

    .line 738
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcr:Lcom/xiaomi/push/b/e;

    .line 739
    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 799
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HR()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 802
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 804
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HV()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 807
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HW()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 810
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HX()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 811
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/c;)V

    .line 813
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->Ia()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HZ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 816
    :cond_9
    return-void
.end method

.method public dL(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcc:Z

    .line 616
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcd:Ljava/lang/String;

    .line 617
    return-object p0
.end method

.method public dM(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bce:Z

    .line 633
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcf:Ljava/lang/String;

    .line 634
    return-object p0
.end method

.method public dN(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcg:Z

    .line 650
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bch:Ljava/lang/String;

    .line 651
    return-object p0
.end method

.method public dO(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bck:Z

    .line 684
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcl:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public dP(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcm:Z

    .line 701
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcn:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public dQ(Ljava/lang/String;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bco:Z

    .line 718
    iput-object p1, p0, Lcom/xiaomi/push/b/h;->bcp:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public eY(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->hasVersion:Z

    .line 599
    iput p1, p0, Lcom/xiaomi/push/b/h;->bcb:I

    .line 600
    return-object p0
.end method

.method public eZ(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bci:Z

    .line 667
    iput p1, p0, Lcom/xiaomi/push/b/h;->bcj:I

    .line 668
    return-object p0
.end method

.method public fa(I)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcs:Z

    .line 755
    iput p1, p0, Lcom/xiaomi/push/b/h;->bct:I

    .line 756
    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcn:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcp:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/xiaomi/push/b/h;->bcd:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x1

    .line 833
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    const/4 v1, 0x2

    .line 837
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HO()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    const/4 v1, 0x3

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HQ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 844
    const/4 v1, 0x4

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HS()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    const/4 v1, 0x5

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HR()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HU()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 852
    const/4 v1, 0x6

    .line 853
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HV()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 856
    const/4 v1, 0x7

    .line 857
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HW()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 860
    const/16 v1, 0x8

    .line 861
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HX()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 864
    const/16 v1, 0x9

    .line 865
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HY()Lcom/xiaomi/push/b/e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->Ia()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 868
    const/16 v1, 0xa

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/push/b/h;->HZ()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_9
    iput v0, p0, Lcom/xiaomi/push/b/h;->bbd:I

    .line 872
    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/xiaomi/push/b/h;->bcb:I

    return v0
.end method

.method public h(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/b/h;
    .locals 1

    .prologue
    .line 880
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readTag()I

    move-result v0

    .line 881
    sparse-switch v0, :sswitch_data_0

    .line 885
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/b/h;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    :sswitch_0
    return-object p0

    .line 891
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readUInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->eY(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 895
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dL(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 899
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dM(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 903
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dN(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 907
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->eZ(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 911
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dO(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 915
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dP(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 919
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->dQ(Ljava/lang/String;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 923
    :sswitch_9
    new-instance v0, Lcom/xiaomi/push/b/e;

    invoke-direct {v0}, Lcom/xiaomi/push/b/e;-><init>()V

    .line 924
    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->a(Lcom/xiaomi/push/b/e;)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 929
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/b/h;->fa(I)Lcom/xiaomi/push/b/h;

    goto :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/xiaomi/push/b/h;->bcc:Z

    return v0
.end method
